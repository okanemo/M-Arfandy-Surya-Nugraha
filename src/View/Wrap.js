import React, { useEffect, Fragment, useState } from "react";
import Navbar from '../component/Navbar'
import Dashboard from '../Pages/Dashboard'
import Setting from "../Pages/Settings";
import AddUser from "../Pages/AddUser";
import { useDispatch, useSelector } from "react-redux";
import { GetAll, GetById, checkToken } from '../Redux/Actions/user';
import localStorage from 'local-storage'


const Wrap = props => {
    const data = useSelector(state => state.user.listUser.result)
    const data2 = useSelector(state => state.user.getById.result)
    const data3 = useSelector(state => state.user.status)



    let match = props.match.path
    const dispatch = useDispatch()
    const id = props.match.params.id

    const checkUser = () => {
        const tok = localStorage.get("token")
        const id = localStorage.get("id")

        dispatch(checkToken(tok, id))
    }

    useEffect(() => {
        checkUser()
        getData()


    }, [])

    const getData = async () => {
        await dispatch(GetById(id))
        await dispatch(GetAll())
    }

    if (data3.error != null) {
        localStorage.remove("token");
        localStorage.remove("id");
        // props.history.push('/login')
        window.location = '/login'

    }

    let filterData = []


    if (data !== undefined && data3.result !== undefined) {
        console.log(data3.result);


        if (data3.result.is_admin !== 1) {

            filterData = data.filter(r => r.userId !== data3.result[0].userId && r.is_delete !== 1 && r.is_admin !== 1)
        } else {

            filterData = data.filter(r => r.userId !== data3.result[0].userId && r.is_delete !== 1)
        }




    }


    return (
        <Fragment>
            <Navbar title={props.title} {...props} />
            {match === "/" ? <Dashboard {...props} data={filterData} user={data2} mydata={data3} /> : null}
            {match === "/setting/:id" ? <Setting {...props} data={data2} /> : null}
            {match === "/addUser" ? <AddUser {...props} /> : null}
        </Fragment>
    )
}

// const mapStateToProps = state => {
//     return {
//         user: state.user
//     };
// };

export default Wrap
import React, { Fragment } from "react";
import { Table } from "react-bootstrap";

import { useDispatch } from "react-redux";
import { deleteUser } from '../Redux/Actions/user';

const Dashboard = (props) => {

    const dispatch = useDispatch()

    let tes = props.mydata.result !== undefined ? props.mydata.result[0] : null
    const id = tes !== null ? tes.userId : 0
    const role_id = tes !== null ? tes.is_admin : 0
    const add = tes !== null ? tes.perm_add : 0
    const edit = tes !== null ? tes.perm_edit : 0
    const deletes = tes !== null ? tes.perm_delete : 0




    const onDelete = (id) => {
        dispatch(deleteUser(id))
        window.location = '/'
    }

    // console.log(props.data);
    return (
        <Fragment >
            <div className='container'>



                <div className="mt-4 d-flex justify-content-between">
                    <h2>List User</h2>
                    {role_id !== 0 ? (
                        <button onClick={() => props.history.push('/addUser')} className='btn btn-primary '>Add User</button>


                    ) : add !== 0 ? (

                        <button onClick={() => props.history.push('/addUser')} className='btn btn-primary '>Add User</button>
                    ) : null}
                </div>
                <div className='mt-3'>

                    <Table responsive>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th className='text-center'>Action</th>

                            </tr>
                        </thead>
                        <tbody>

                            {props.data !== undefined ? (

                                props.data.map((list, key) =>
                                    <Fragment key={key}>
                                        <tr>
                                            <td>{key + 1}</td>
                                            <td>{list.name}</td>
                                            <td>{list.email}</td>
                                            <td className='text-center'>
                                                {role_id !== 0 ? (
                                                    <span onClick={() => props.history.push(`setting/${list.userId}`)} className='badge badge-primary mr-2'>Setting</span>


                                                ) : edit !== 0 ? (

                                                    <span onClick={() => props.history.push(`setting/${list.userId}`)} className='badge badge-primary mr-2'>Setting</span>
                                                ) : null}

                                                {role_id !== 0 ? (
                                                    <span onClick={() => onDelete(list.userId)} className='badge badge-danger'>Delete</span>


                                                ) : deletes !== 0 ? (

                                                    <span onClick={() => onDelete(list.userId)} className='badge badge-danger'>Delete</span>
                                                ) : null}



                                            </td>
                                        </tr>
                                    </Fragment>




                                )
                            ) : null}


                        </tbody>
                    </Table>
                </div>
            </div>
        </Fragment >
    )
}
export default Dashboard
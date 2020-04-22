import React, { Fragment, useEffect, useState } from "react";
import { useDispatch } from "react-redux";
import { updatePermission } from "../Redux/Actions/user";
const Setting = (props) => {

    const id = props.match.params.id

    const dispatch = useDispatch()


    const update = () => {
        const data_add = document.querySelector('#add').checked;
        const data_edit = document.querySelector('#edit').checked;
        const data_delete = document.querySelector('#delete').checked;

        const data = {
            'id': id,
            'add': data_add ? '1' : '0',
            'edit': data_edit ? '1' : '0',
            'delete': data_delete ? '1' : '0'
        }
        dispatch(updatePermission(data))
        props.history.push('/')

    }


    let add = props.data !== undefined && props.data.length !== 0 ? props.data[0].perm_add : null
    let edit = props.data !== undefined && props.data.length !== 0 ? props.data[0].perm_edit : null
    let deletes = props.data !== undefined && props.data.length !== 0 ? props.data[0].perm_delete : null

    const [onAdd, setOnAdd] = useState(add)
    const [onEdit, setOnEdit] = useState(edit)
    const [onDelete, setOnDelete] = useState(deletes)

    useEffect(() => {
        setOnAdd(add)
        setOnEdit(edit)
        setOnDelete(deletes)
    }, [add])

    const changeAdd = () => {
        setOnAdd(!onAdd)
    }
    const changeEdit = () => {
        setOnEdit(!onEdit)
    }
    const changeDelete = () => {
        setOnDelete(!onDelete)
    }

    return (
        <Fragment >
            <div className='container'>
                <div className='mt-4'>

                    <h2>Setting User Permmisions </h2>
                </div>
                <div className='mt-3'>
                    <div className="custom-control custom-checkbox">

                        <input onClick={() => changeAdd()} type="checkbox" className="custom-control-input" id="add" checked={onAdd} />
                        <label className="custom-control-label" for="add">Add User</label>
                    </div>
                    <div className="custom-control custom-checkbox">

                        <input onClick={() => changeEdit()} type="checkbox" className="custom-control-input" id="edit" checked={onEdit} />
                        <label className="custom-control-label" for="edit">Setting User</label>
                    </div>
                    <div className="custom-control custom-checkbox">

                        <input onClick={() => changeDelete()} type="checkbox" className="custom-control-input" id="delete" checked={onDelete} />
                        <label className="custom-control-label" for="delete">Delete User</label>
                    </div>
                    <button onClick={() => update()} className="btn btn-primary mt-4">Submit</button>

                </div>
            </div>
        </Fragment>
    )
}
export default Setting
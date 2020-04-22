import React, { Fragment, useState, useEffect } from "react";
import { Form, Button, Alert } from "react-bootstrap";
import { useDispatch, useSelector } from "react-redux";
import { register } from "../Redux/Actions/user";
const AddUser = (props) => {
    const [validated, setValidated] = useState(false);
    const respon = useSelector(state => state.user.other)
    const dispatch = useDispatch()

    const Submit = (event) => {
        const form = event.currentTarget;
        const username = document.getElementById('username').value
        const email = document.getElementById('mail').value
        const password = document.getElementById('password').value

        if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
        } else {
            event.preventDefault();
            const datas = {
                'name': username,
                'email': email,
                'password': password
            }
            dispatch(register(datas))

        }
        setValidated(true);
    }

    useEffect(() => {
        if (respon.error === null) {
            props.history.push('/')
        }

        console.log(respon);
    }, [respon])

    return (
        <Fragment >
            <div className='container'>
                <div className='mt-4'>
                    <h2>Add User</h2>
                </div>
                <Form noValidate validated={validated} onSubmit={(e) => Submit(e)} className='w-50'>
                    {respon.error != null ?

                        (<Alert variant='danger'>
                            Email atau password salah
                        </Alert>) : null

                    }
                    <Form.Group controlId="formBasicEmail">
                        <Form.Label>Username</Form.Label>
                        <Form.Control required id='username' type="text" placeholder="Enter username" />
                        <Form.Control.Feedback type="invalid">
                            Please choose a username.
                            </Form.Control.Feedback>
                    </Form.Group>

                    <Form.Group controlId="formBasicEmail">
                        <Form.Label>Email address</Form.Label>
                        <Form.Control required id='mail' type="email" placeholder="Enter email" />
                        <Form.Control.Feedback type="invalid">
                            Please choose valid email
                            </Form.Control.Feedback>
                    </Form.Group>

                    <Form.Group controlId="formBasicPassword">
                        <Form.Label>Password</Form.Label>
                        <Form.Control required id='password' type="password" placeholder="Password" />
                    </Form.Group>

                    <Button className='d-block' variant="primary" type="submit">
                        Submit
                    </Button>
                </Form>
            </div>
        </Fragment>
    )
}
export default AddUser
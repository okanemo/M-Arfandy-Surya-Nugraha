import React, { Fragment } from 'react'
import { Navbar, Button } from "react-bootstrap";
import localStorage from 'local-storage'


const Navbars = props => {
    const logOut = () => {
        localStorage.remove("token");

        localStorage.remove("id");

        window.location = '/login'
    }

    return (
        <Fragment>
            <Navbar bg="primary">
                <div className='container'>
                    <Navbar.Brand>{props.title}</Navbar.Brand>
                    <Button onClick={() => logOut()} variant="danger">LogOut</Button>
                </div>
            </Navbar>
        </Fragment>

    )
}

export default Navbars
import React, { Component } from 'react'
import { Container, Navbar, Nav } from 'react-bootstrap'

const style = {
    navbar: {
        borderRadius: '0 0 25px 25px',
        boxShadow: '0px 4px 20px rgba(0, 0, 0, 0.05)'
    }
}

class Bar extends Component {
    render() {
        console.log(this.props.data)
        return (
            <Navbar style={style.navbar} className="mb-5">
                <Container className="d-flex justify-content-between">
                    <Navbar.Brand className="primary bold big">
                        Zwallet
                    </Navbar.Brand>
                    <Nav>
                        <img width="50px" height="50px" src="https://i.ibb.co/H74z63w/0-1.jpg" alt=""/>
                        <div>
                            <p className="bold med">Saidina Hamzah</p>
                            <p className="med">+62 3281963112</p>
                        </div>
                    </Nav>
                </Container>
            </Navbar>
        )
    }
}

export default Bar
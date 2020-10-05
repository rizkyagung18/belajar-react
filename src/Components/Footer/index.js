import React, { Component } from 'react'
import { Container } from 'react-bootstrap'

class Footer extends Component {
    render() {
        return (
            <footer className="bg-primary">
                <Container className="d-flex justify-content-between">
                    <div className="text-white">
                        2020 zwallet
                    </div>
                    <div className="text-white d-flex justify-content-between">
                        <p className="med mr-4">lorem</p>
                        <p className="med">asdadadada</p>
                    </div>
                </Container>
            </footer>
        )
    }
}

export default Footer

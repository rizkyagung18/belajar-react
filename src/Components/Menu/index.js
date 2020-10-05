import React, { Component } from 'react'
import { Link } from 'react-router-dom'

const style = {
    menu: {
        borderRadius: '10px'
    }
}

class Menu extends Component {
    state = {
        color: 'red'
    }
    render() {
        return (
            <div style={style.menu} className="d-flex flex-column justify-content-between bg-white">
                <div className="d-flex flex-column align-items-center">
                    <div className="d-flex flex-column">
                        <Link to="/">Dashboard</Link>
                        <Link to="/transfer">Transfer</Link>
                        <Link to={{
                            pathname: `/topup`,
                            state: {
                                color: this.state.color
                            }
                        }}>Top Up</Link>
                        <Link>Profile</Link>
                    </div>
                </div>
                <div>Logout</div>
            </div>
        )
    }
}

export default Menu
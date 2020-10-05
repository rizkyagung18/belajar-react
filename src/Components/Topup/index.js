import axios from 'axios'
import React, { Component } from 'react'

class Topup extends Component {
    state = {
        data: []
    }

    async componentDidMount() {
        const res = await axios.get('http://localhost:8000/topup')
        this.setState({ data: res.data.data })
    }
    render() {
        console.log(this.props.location.state.color)
        return (
            <div className="items">
                {this.state.data.map((item, index) => {
                    return (
                        <div key={index} className="label">
                            <p className="bold med primary">{item.sequence}</p>
                            <p className="med">{item.title}</p>
                        </div>
                    )
                })}
            </div>
        )
    }
}

export default Topup
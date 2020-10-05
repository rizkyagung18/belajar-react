import React, { Component } from 'react'
import axios from 'axios'

class Search extends Component {
    constructor(props) {
        super()
        this.state = {
            query: '',
            data: []
        }

        this.handleChange = this.handleChange.bind(this)
    }

    async componentDidMount() {
        const res = await axios.get('http://localhost:8000/users/search/3')
        this.setState({ data: res.data.data})
    }

    async handleChange(e) {
        this.setState({ query:e.target.value })
        const res = await axios.get(`http://localhost:8000/transfer/search/3`, {
            params: {
                q: this.state.query
            }
        })

        if(res.data.data.length > 0) {
            this.setState({ data: res.data.data })
        }
    }

    render() {
        console.log(this.props.user)
        return (
            <div>
                <h3 className="bold mb-4">Search Receiver</h3>
                <input type="search" onChange={this.handleChange} value={this.state.query} />
                {this.state.data.map((item, index) => {
                    return (
                        <div key={index} className="label">
                            <img width="70px" height="70px" src={item.photo} alt="" />
                            <div>
                                <h4>{item.name}</h4>
                                <p>{item.phone}</p>
                            </div>
                        </div>
                    )
                })}
            </div>
        )
    }
}

export default Search 
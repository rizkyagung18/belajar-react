import Axios from 'axios';
import React, { Component } from 'react';
import { Container, Row, Col } from 'react-bootstrap';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import Footer from './Components/Footer/';
import Menu from './Components/Menu';
import Navbar from './Components/Navbar/'
import Search from './Components/Search/'
import Topup from './Components/Topup/';

class App extends Component {
  state = {
    data: []
  }
  async componentDidMount() {
    const res = await Axios.get('http://localhost:8000/users/2')
    this.setState({ data: res.data.data})
  }

    render() {
      return (
        <Router>
          <Navbar data={this.state.data} />
          <Container>
            <Row>
              <Col lg="3">
                <Menu />
              </Col>
              <Col>
                <Switch>
                  <Route exact path="/transfer" component={() => <Search user={this.state.data} />}/>
                  <Route exact path="/topup" component={Topup} />
                </Switch>
              </Col>
            </Row>
          </Container>
          <Footer />
        </Router>
      )
    }
}

export default App;

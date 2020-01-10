import React, {Component} from 'react';
import { connect } from 'react-redux';
import GalleryItem from '../GalleryItem/GalleryItem';

class UserGallery extends Component {

  state = {
    item: []
  }

  componentDidMount() {
    const id = this.props.match.params.id;
    this.props.dispatch({type: `GET_GALLERYID`, payload: id})
  }

  renderGallery () {
    return this.props.userItem.map( (item,i) => {
      return <GalleryItem key={i} item={item} />
    })
  }

  render() {
    return(
      <div>
        <h2>USER GALLERY</h2>
        <ul>
          {this.renderGallery()}
        </ul>
      </div>
    )
  }
}

const putReduxOnDom=(reduxState)=>({id: reduxState.user.id, userItem: reduxState.galleryId})
export default connect(putReduxOnDom)(UserGallery);
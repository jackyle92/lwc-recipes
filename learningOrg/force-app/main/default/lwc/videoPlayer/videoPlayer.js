import { LightningElement, api } from 'lwc';

export default class VideoPlayer extends LightningElement {
    @api videoUrl;

    @api getIsPlaying() {
        const player = this.template.querySelector('video');
        return player !== null && player.paused === false;
    }

    @api play() {
        const player = this.template.querySelector('video');
        // the player might not be in the DOM just yet
        if (player) {
            player.play();
        }
    }

    @api pause() {
        const player = this.template.querySelector('video');
        if (player) {
            player.pause();
        }
    }

    // private getter for computed value
    get videoType() {
        return 'video/' + this.videoUrl.split('.').pop();
    }
}
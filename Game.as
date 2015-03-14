﻿package {	import flash.display.MovieClip;	import flash.display.DisplayObject;	import flash.events.MouseEvent;	import flash.events.Event;	import gs.TweenLite;	import gs.easing.*;	public class Game extends MovieClip	{		private var currentDiaolg:DisplayObject;		private static var mInstance:Game;		public function Game()		{						mInstance = this			this.addEventListener("START_GAME",onStartGame)			this.addEventListener("START_HELP",onStartHelp)			this.addEventListener("GOTO_HOMEPAGE",onGoToHomePage)			this.addEventListener("BACK_TO_HOME_PAGE_FROM_MAIN",onGoToHomePageFromMain)											}		private function onInit():void{			createHomePage();		}		public static function getInstance():Game{			trace("getInstance xxxxxxx")			if (mInstance == null ){				trace("getInstance xxxxxxx 1")				mInstance = new Game()			}			return mInstance		}		private function createHomePage():void{						var hp:HomePage = new HomePage()			this.currentDiaolg = hp			stage.addChild(hp)			}		public function onStartGame(evt):void{						TweenLite.to(this.homePage,0.4,{x:-2240})			TweenLite.to(this.mainGame,0.4,{x:200})			this.mainGame.init()			//stage.removeChild(this.currentDiaolg)			//var main:MainGame = new MainGame()			//this.currentDiaolg = main			//stage.addChild(main)		}		public function onStartHelp(evt):void{			TweenLite.to(this.homePage,0.4,{x:-2240})			TweenLite.to(this.helpPage,0.4,{x:20})		}		public function onGoToHomePage(evt):void		{			TweenLite.to(this.homePage,0.4,{x:200})			TweenLite.to(this.helpPage,0.4,{x:-2240})		}		private function onGoToHomePageFromMain(evt):void{			TweenLite.to(this.homePage,0.4,{x:200})			TweenLite.to(this.mainGame,0.4,{x:2240})		}			}}
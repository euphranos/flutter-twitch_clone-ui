import '../models/category.dart';
import '../models/steramer.dart';

List<Categori> allCategories = [
  Categori(
    categoriName: "Apex Legends",
    categoriImage: "assets/categories/apex.jpg",
    filters: ["FPS", "SHOOTER"],
    viewCount: 13200,
  ),
  Categori(
      viewCount: 2500,
      categoriName: "Battlefield V",
      categoriImage: "assets/categories/battlefield5.jpg",
      filters: ["ACTION", "FPS", "SHOOTER"]),
  Categori(
      viewCount: 400,
      categoriName: "Dying Light 2",
      categoriImage: "assets/categories/dl2.jpg",
      filters: ["ACTION", "RPG", "HORROR"]),
  Categori(
      viewCount: 25350,
      categoriName: "DOTA 2",
      categoriImage: "assets/categories/dota2.jpg",
      filters: ["MOBA", "ACTION", "STRATEGY"]),
  Categori(
      viewCount: 328,
      categoriName: "FIFA22",
      categoriImage: "assets/categories/fifa22.jpg",
      filters: ["Simulation", "Sports Game"]),
  Categori(
      viewCount: 32820,
      categoriName: "Grand Theft Auto V ",
      categoriImage: "assets/categories/gta5.jpg",
      filters: ["Adventure Game", "SHOOTER"]),
  Categori(
      viewCount: 240,
      categoriName: "Hearts Of Iron IV",
      categoriImage: "assets/categories/hoi4.jpg",
      filters: ["Strategy", "RTS", "Simulation"]),
  Categori(
      viewCount: 3400,
      categoriName: "Escape From Tarkov",
      categoriImage: "assets/categories/tarkov.jpg",
      filters: ["Simulation", "FPS", "SHOOTER"]),
  Categori(
      viewCount: 28500,
      categoriName: "VALORANT",
      categoriImage: "assets/categories/valorant.jpg",
      filters: ["FPS", "SHOOTER"]),
];

List<Streamer> allStreamers = [
  Streamer(
    name: "FIFA",
    avatar: "assets/streamers/fifa_avatar.png",
    streamImage: "assets/streamers/fifa_stream.png",
    title: "FIFAe Nations Cup 2022™ - Day 3 – Round of 16 !drops !gameplay",
    filters: [
      "English",
    ],
    category: "EASPORTSFIFA",
    streamViewersCount: 5710,
  ),
  Streamer(
    name: "LCK KOREA",
    streamViewersCount: 670,
    avatar: "assets/streamers/lck_korea_avatar.png",
    streamImage: "assets/streamers/lck_korea_stream.png",
    title: "2022 LCK CL Summer",
    filters: ["Korea", "Strategy"],
    category: "League Of Legends",
  ),
  Streamer(
    streamViewersCount: 38500,
    name: "VALORANT",
    avatar: "assets/streamers/valorant_avatar.png",
    streamImage: "assets/streamers/valorant_stream.png",
    title: "Regional Leagues EMEA Finals - Group Stage - Day 4",
    filters: ["English", "Fps", "Shooter"],
    category: "VALORANT",
  ),
  Streamer(
      streamViewersCount: 62850,
      name: "World of Warcraft",
      avatar: "assets/streamers/wow_avatar.png",
      streamImage: "assets/streamers/wow_stream.png",
      title: "TBC Classic Arena Tournament | Day 2 | Americas Top 8",
      filters: ["English", "Strategy"],
      category: "World of Warcraft"),
];

/*
 * Copyright (c)  2023  Juan Nascimento
 * Part of FileManagerSphere - SphereApplication.kt
 * SPDX-License-Identifier: GPL-3.0-or-later
 * More details at: https://www.gnu.org/licenses/
 */

package com.etb.filemanager.data

import android.app.Application
import coil.ImageLoader
import coil.ImageLoaderFactory
import coil.request.CachePolicy
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class SphereApplication : Application(), ImageLoaderFactory {

    // Low-RAM friendly image pipeline (targets ~2 GB devices):
    // small memory cache, no crossfade, decode at reduced quality.
    override fun newImageLoader(): ImageLoader =
        ImageLoader.Builder(this)
            .memoryCache { coil.memory.MemoryCache.Builder(this).maxSizePercent(0.10).build() }
            .crossfade(false)
            .allowRgb565(true)
            .diskCachePolicy(CachePolicy.ENABLED)
            .respectCacheHeaders(false)
            .build()
}
.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$InputMethodCallback;,
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/app/NativeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/NativeActivity;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/app/NativeActivity;->finishPreDispatchKeyEventNative(IIZ)V

    return-void
.end method

.method private native dispatchKeyEventNative(ILandroid/view/KeyEvent;)V
.end method

.method private native finishPreDispatchKeyEventNative(IIZ)V
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I
.end method

.method private native onConfigurationChangedNative(I)V
.end method

.method private native onContentRectChangedNative(IIIII)V
.end method

.method private native onInputChannelCreatedNative(ILandroid/view/InputChannel;)V
.end method

.method private native onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V
.end method

.method private native onLowMemoryNative(I)V
.end method

.method private native onPauseNative(I)V
.end method

.method private native onResumeNative(I)V
.end method

.method private native onSaveInstanceStateNative(I)[B
.end method

.method private native onStartNative(I)V
.end method

.method private native onStopNative(I)V
.end method

.method private native onSurfaceChangedNative(ILandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(ILandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(I)V
.end method

.method private native onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(IZ)V
.end method

.method private native unloadNativeCode(I)V
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_0
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Landroid/app/NativeActivity;->dispatchKeyEventNative(ILandroid/view/KeyEvent;)V

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 349
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    .line 350
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    iput-boolean v2, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    .line 357
    return-void

    .line 355
    .end local v0           #decor:Landroid/view/View;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    throw v1
.end method

.method hideIme(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 378
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 256
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onConfigurationChangedNative(I)V

    .line 258
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 145
    const-string/jumbo v11, "main"

    .line 146
    .local v11, libname:Ljava/lang/String;
    const-string v2, "ANativeActivity_onCreate"

    .line 149
    .local v2, funcname:Ljava/lang/String;
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 150
    new-instance v0, Landroid/app/NativeActivity$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/app/NativeActivity$InputMethodCallback;-><init>(Landroid/app/NativeActivity;)V

    iput-object v0, p0, Landroid/app/NativeActivity;->mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

    .line 152
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/Window;->setFormat(I)V

    .line 155
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 159
    new-instance v0, Landroid/app/NativeActivity$NativeContentView;

    invoke-direct {v0, p0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 160
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iput-object p0, v0, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 161
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {p0, v0}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 163
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 168
    .local v9, ai:Landroid/content/pm/ActivityInfo;
    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.lib_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, ln:Ljava/lang/String;
    if-eqz v13, :cond_0

    move-object v11, v13

    .line 171
    :cond_0
    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.func_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 172
    if-eqz v13, :cond_1

    move-object v2, v13

    .line 178
    .end local v13           #ln:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 180
    .local v1, path:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    iget-object v0, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v12, libraryFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_2
    if-nez v1, :cond_3

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find native library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .end local v1           #path:Ljava/lang/String;
    .end local v9           #ai:Landroid/content/pm/ActivityInfo;
    .end local v12           #libraryFile:Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 175
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Error getting activity info"

    invoke-direct {v0, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 190
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v9       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v12       #libraryFile:Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "android:native_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    .line 193
    .local v8, nativeSavedState:[B
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I

    move-result v0

    iput v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    .line 198
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    if-nez v0, :cond_5

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load native library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local v8           #nativeSavedState:[B
    :cond_4
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 201
    .restart local v8       #nativeSavedState:[B
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 207
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 208
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 209
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V

    .line 213
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 215
    :cond_1
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->unloadNativeCode(I)V

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 332
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v7

    .line 333
    .local v7, w:I
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v6

    .line 334
    .local v6, h:I
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v6, v0, :cond_1

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 337
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 338
    iput v7, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 339
    iput v6, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 340
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 341
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v3, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v5, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onContentRectChangedNative(IIIII)V

    .line 345
    :cond_1
    return-void
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 318
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 319
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelCreatedNative(ILandroid/view/InputChannel;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 325
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 326
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 263
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 264
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onLowMemoryNative(I)V

    .line 266
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onPauseNative(I)V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onResumeNative(I)V

    .line 229
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(I)[B

    move-result-object v0

    .line 235
    .local v0, state:[B
    if-eqz v0, :cond_0

    .line 236
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 243
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStartNative(I)V

    .line 244
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStopNative(I)V

    .line 250
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 271
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(IZ)V

    .line 274
    :cond_0
    return-void
.end method

.method preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "seq"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

    invoke-virtual {v0, p0, p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    .line 362
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 366
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 370
    return-void
.end method

.method showIme(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 373
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 374
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 297
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 298
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onSurfaceChangedNative(ILandroid/view/Surface;III)V

    .line 300
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 289
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 290
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 291
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(ILandroid/view/Surface;)V

    .line 293
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 311
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 312
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 304
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 305
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V

    .line 307
    :cond_0
    return-void
.end method

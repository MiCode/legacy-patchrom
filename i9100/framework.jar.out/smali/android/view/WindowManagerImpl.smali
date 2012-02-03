.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_SAME_PROCESS:I = 0x80

.field private static mWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRoot;

.field private mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 13
    .parameter "view"
    .parameter "params"
    .parameter "nest"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 129
    instance-of v8, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_0

    .line 130
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Params must be WindowManager.LayoutParams"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 134
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 138
    .local v7, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    .line 140
    .local v5, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 148
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p1, v8}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v3

    .line 149
    .local v3, index:I
    if-ltz v3, :cond_2

    .line 150
    if-nez p3, :cond_1

    .line 151
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already been added to the window manager."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 201
    .end local v3           #index:I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 154
    .restart local v3       #index:I
    :cond_1
    :try_start_1
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v6, v8, v3

    .line 155
    .local v6, root:Landroid/view/ViewRoot;
    iget v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 157
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 159
    monitor-exit p0

    .line 204
    :goto_0
    return-void

    .line 164
    .end local v6           #root:Landroid/view/ViewRoot;
    :cond_2
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_5

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7cf

    if-gt v8, v9, :cond_5

    .line 166
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    move v1, v8

    .line 167
    .local v1, count:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 168
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v8, v8, v2

    iget-object v8, v8, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v8}, Landroid/view/ViewRoot$W;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, v9, :cond_3

    .line 169
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v5, v8, v2

    .line 167
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_4
    move v1, v10

    .line 166
    goto :goto_1

    .line 174
    :cond_5
    new-instance v6, Landroid/view/ViewRoot;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/ViewRoot;-><init>(Landroid/content/Context;)V

    .line 175
    .restart local v6       #root:Landroid/view/ViewRoot;
    const/4 v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 177
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v8, :cond_6

    .line 180
    const/4 v3, 0x1

    .line 181
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 182
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 183
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 196
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 198
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v8, v3

    .line 199
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aput-object v6, v8, v3

    .line 200
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v8, v3

    .line 201
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-virtual {v6, p1, v7, v5}, Landroid/view/ViewRoot;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto :goto_0

    .line 185
    :cond_6
    :try_start_2
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    add-int/lit8 v3, v8, 0x1

    .line 186
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 187
    .local v4, old:[Ljava/lang/Object;
    new-array v8, v3, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 188
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 190
    new-array v8, v3, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 191
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 193
    new-array v8, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 194
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    sub-int v11, v3, v12

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .parameter "view"
    .parameter "required"

    .prologue
    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v2, v2

    move v0, v2

    .line 375
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 376
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 377
    monitor-exit p0

    move v2, v1

    .line 384
    :goto_2
    return v2

    .line 374
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 375
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_2
    if-eqz p2, :cond_3

    .line 381
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 384
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    const/4 v2, -0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Landroid/view/WindowManagerImpl;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 3
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 361
    array-length v0, p0

    if-lez v0, :cond_1

    .line 362
    if-lez p2, :cond_0

    .line 363
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    .line 366
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 111
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 118
    return-void
.end method

.method public addViewNesting(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 123
    return-void
.end method

.method public closeAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_0

    .line 299
    monitor-exit p0

    .line 325
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 303
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 306
    if-eqz p1, :cond_1

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    .line 307
    :cond_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v3, v4, v1

    .line 308
    .local v3, root:Landroid/view/ViewRoot;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRoot;->mAddNesting:I

    .line 311
    if-eqz p2, :cond_2

    .line 312
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRoot;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 316
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 320
    add-int/lit8 v1, v1, -0x1

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 303
    .end local v3           #root:Landroid/view/ViewRoot;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_4
    monitor-exit p0

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 275
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 278
    .local v0, count:I
    sub-int v4, v0, v5

    new-array v3, v4, [Landroid/view/View;

    .line 279
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 280
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 282
    sub-int v4, v0, v5

    new-array v2, v4, [Landroid/view/ViewRoot;

    .line 283
    .local v2, tmpRoots:[Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 284
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 286
    sub-int v4, v0, v5

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 288
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 289
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 291
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 294
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/Display;-><init>(I)V

    return-object v0
.end method

.method public getRequestedRotation()I
    .locals 2

    .prologue
    .line 97
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRequestedRotation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 98
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 99
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 329
    .local v3, vp:Landroid/view/ViewParent;
    :goto_0
    if-eqz v3, :cond_0

    instance-of v5, v3, Landroid/view/ViewRoot;

    if-nez v5, :cond_0

    .line 330
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 333
    :cond_0
    if-nez v3, :cond_1

    move-object v5, v6

    .line 344
    :goto_1
    return-object v5

    .line 335
    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/view/ViewRoot;

    move-object v4, v0

    .line 337
    .local v4, vr:Landroid/view/ViewRoot;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    array-length v1, v5

    .line 338
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 339
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v5, v5, v2

    if-ne v5, v4, :cond_2

    .line 340
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v5, v5, v2

    goto :goto_1

    .line 338
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v6

    .line 344
    goto :goto_1
.end method

.method public isInputMethodActive()Z
    .locals 2

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->isInputMethodActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 227
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 229
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling with view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the ViewRoot is attached to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 240
    .local v1, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v3, v1

    .line 241
    .local v2, root:Landroid/view/ViewRoot;
    invoke-virtual {v2}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, curView:Landroid/view/View;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewRoot;->mAddNesting:I

    .line 244
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 245
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 246
    if-ne v0, p1, :cond_0

    .line 247
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewRoot is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method removeViewLocked(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 256
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v1, v3, p1

    .line 257
    .local v1, root:Landroid/view/ViewRoot;
    invoke-virtual {v1}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    .line 261
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    if-lez v3, :cond_0

    .line 271
    :goto_0
    return-object v2

    .line 265
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 266
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 267
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 269
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 270
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "view"
    .parameter "params"

    .prologue
    .line 207
    instance-of v4, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_0

    .line 208
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Params must be WindowManager.LayoutParams"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    .line 214
    .local v3, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    monitor-enter p0

    .line 217
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 218
    .local v1, index:I
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v4, v1

    .line 219
    .local v2, root:Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v3, v4, v1

    .line 220
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 221
    monitor-exit p0

    .line 222
    return-void

    .line 221
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

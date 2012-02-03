.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private final mCursor:Landroid/database/CrossProcessCursor;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;

.field private final mReadOnly:Z

.field private mWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;ZLandroid/database/CursorWindow;)V
    .locals 7
    .parameter "cursor"
    .parameter "observer"
    .parameter "providerName"
    .parameter "allowWrite"
    .parameter "window"

    .prologue
    const/4 v6, 0x0

    const-string v3, "Cursor"

    .line 79
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    .line 81
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/CrossProcessCursor;

    move-object v3, v0

    iput-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 82
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    instance-of v3, v3, Landroid/database/AbstractWindowedCursor;

    if-eqz v3, :cond_2

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v2, v0

    .line 84
    .local v2, windowedCursor:Landroid/database/AbstractWindowedCursor;
    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "Cursor"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {v2, p5}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2           #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :goto_1
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 101
    if-nez p4, :cond_3

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mReadOnly:Z

    .line 103
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V

    .line 104
    return-void

    .line 86
    .restart local v2       #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :cond_1
    :try_start_1
    const-string v3, "Cursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cross process cursor has a local window before setWindow in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    .end local v2           #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 97
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Only CrossProcessCursor cursors are supported across process for now"

    invoke-direct {v3, v4, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 92
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_2
    :try_start_2
    iput-object p5, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 93
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p5}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    move v3, v6

    .line 101
    goto :goto_2
.end method

.method private createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 188
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    return-void
.end method

.method private maybeUnregisterObserverProxy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 108
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 111
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 146
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 147
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 141
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 142
    return-void
.end method

.method public deleteRow(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-boolean v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mReadOnly:Z

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "ContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: modifying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 220
    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deleteRow()Z

    move-result v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .locals 2
    .parameter "startPos"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    .line 116
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-interface {v0, p1, v1}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 123
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_2
    iget-object p0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .end local p0
    check-cast p0, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onMove(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    .line 129
    return-void
.end method

.method public requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I
    .locals 4
    .parameter "observer"
    .parameter "window"

    .prologue
    .line 150
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    check-cast v2, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v2, p2}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 154
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 155
    const/4 v2, -0x1

    .line 170
    :goto_0
    return v2

    .line 157
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 158
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v3}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .local v1, leakProgram:Ljava/lang/IllegalStateException;
    throw v1

    .line 164
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #leakProgram:Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 166
    iput-object p2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 168
    :cond_2
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 169
    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V

    .line 170
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateRows(Ljava/util/Map;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-boolean v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mReadOnly:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "ContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: modifying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

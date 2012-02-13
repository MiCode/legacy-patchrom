.class public interface abstract Landroid/database/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# virtual methods
.method public abstract abortUpdates()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract commitUpdates()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract commitUpdates(Ljava/util/Map;)Z
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
.end method

.method public abstract deactivate()V
.end method

.method public abstract deleteRow()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBlob(I)[B
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getColumnIndex(Ljava/lang/String;)I
.end method

.method public abstract getColumnIndexOrThrow(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getColumnName(I)Ljava/lang/String;
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getPosition()I
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getWantsAllOnMoveCalls()Z
.end method

.method public abstract hasUpdates()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAfterLast()Z
.end method

.method public abstract isBeforeFirst()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isFirst()Z
.end method

.method public abstract isLast()Z
.end method

.method public abstract isNull(I)Z
.end method

.method public abstract move(I)Z
.end method

.method public abstract moveToFirst()Z
.end method

.method public abstract moveToLast()Z
.end method

.method public abstract moveToNext()Z
.end method

.method public abstract moveToPosition(I)Z
.end method

.method public abstract moveToPrevious()Z
.end method

.method public abstract registerContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract requery()Z
.end method

.method public abstract respond(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end method

.method public abstract supportsUpdates()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract updateBlob(I[B)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateDouble(ID)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateFloat(IF)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateInt(II)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateLong(IJ)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateShort(IS)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateString(ILjava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateToNull(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

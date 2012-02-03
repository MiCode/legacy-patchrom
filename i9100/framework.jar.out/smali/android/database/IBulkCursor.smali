.class public interface abstract Landroid/database/IBulkCursor;
.super Ljava/lang/Object;
.source "IBulkCursor.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final CLOSE_TRANSACTION:I = 0xc

.field public static final COUNT_TRANSACTION:I = 0x2

.field public static final DEACTIVATE_TRANSACTION:I = 0x6

.field public static final DELETE_ROW_TRANSACTION:I = 0x5

.field public static final GET_COLUMN_NAMES_TRANSACTION:I = 0x3

.field public static final GET_CURSOR_WINDOW_TRANSACTION:I = 0x1

.field public static final GET_EXTRAS_TRANSACTION:I = 0xa

.field public static final ON_MOVE_TRANSACTION:I = 0x8

.field public static final REQUERY_TRANSACTION:I = 0x7

.field public static final RESPOND_TRANSACTION:I = 0xb

.field public static final UPDATE_ROWS_TRANSACTION:I = 0x4

.field public static final WANTS_ON_MOVE_TRANSACTION:I = 0x9

.field public static final descriptor:Ljava/lang/String; = "android.content.IBulkCursor"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract count()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteRow(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getExtras()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWantsAllOnMoveCalls()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWindow(I)Landroid/database/CursorWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMove(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRows(Ljava/util/Map;)Z
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;
.super Landroid/os/Handler;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MainThreadNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteCursor;


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Landroid/database/sqlite/SQLiteCursor;

    #calls: Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V
    invoke-static {v0}, Landroid/database/sqlite/SQLiteCursor;->access$700(Landroid/database/sqlite/SQLiteCursor;)V

    return-void
.end method

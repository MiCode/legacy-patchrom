.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private mSelf:Z

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;Z)V
    .locals 0
    .parameter
    .parameter "self"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-boolean v1, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 44
    return-void
.end method

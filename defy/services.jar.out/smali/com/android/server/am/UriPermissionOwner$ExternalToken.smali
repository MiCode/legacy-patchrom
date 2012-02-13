.class Lcom/android/server/am/UriPermissionOwner$ExternalToken;
.super Landroid/os/Binder;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermissionOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/am/UriPermissionOwner;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getOwner()Lcom/android/server/am/UriPermissionOwner;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

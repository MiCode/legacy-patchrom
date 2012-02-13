.class Lcom/android/internal/policy/impl/PhoneZoom$1;
.super Ljava/lang/Object;
.source "PhoneZoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneZoom;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$1;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$1;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$200()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/PhoneZoom;->startZoomWindow(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneZoom;->access$300(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;)V

    return-void
.end method

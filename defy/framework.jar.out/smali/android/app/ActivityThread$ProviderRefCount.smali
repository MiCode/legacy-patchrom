.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public count:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;I)V
    .locals 0
    .parameter
    .parameter "pCount"

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    return-void
.end method

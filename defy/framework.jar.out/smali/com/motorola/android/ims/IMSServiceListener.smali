.class public Lcom/motorola/android/ims/IMSServiceListener;
.super Ljava/lang/Object;
.source "IMSServiceListener.java"


# instance fields
.field protected mService:Lcom/motorola/android/ims/IMSService;


# direct methods
.method public constructor <init>(Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/ims/IMSServiceListener;->mService:Lcom/motorola/android/ims/IMSService;

    return-void
.end method


# virtual methods
.method public processServiceClosed(Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter "service"

    .prologue
    return-void
.end method

.method public processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V
    .locals 0
    .parameter "service"
    .parameter "status"

    .prologue
    return-void
.end method

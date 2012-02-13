.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/nfc/NfcAdapter;

    invoke-direct {v0, p1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, adapter:Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-void

    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    goto :goto_0
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

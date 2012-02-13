.class Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mHandler:Lcom/android/phone/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field private textField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(ILcom/android/phone/SpecialCharSequenceMgr$QueryHandler;I)V
    .locals 0
    .parameter "number"
    .parameter "handler"
    .parameter "token"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p1, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 454
    iput-object p2, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/phone/SpecialCharSequenceMgr$QueryHandler;

    .line 455
    iput p3, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    .line 456
    return-void
.end method


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 487
    iget-object v0, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/phone/SpecialCharSequenceMgr$QueryHandler;

    iget v1, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/android/server/EncryptService$InternalDB;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalDB"
.end annotation


# instance fields
.field private mCryptoPolicy:I

.field private m_PwdHashCode:Ljava/lang/String;

.field private m_State:Ljava/lang/String;

.field private m_StorageCID:Ljava/lang/String;

.field private m_WorkingPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 2
    .parameter

    .prologue
    const-string v1, ""

    .line 1274
    iput-object p1, p0, Lcom/android/server/EncryptService$InternalDB;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_State:Ljava/lang/String;

    .line 1268
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_PwdHashCode:Ljava/lang/String;

    .line 1269
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_WorkingPath:Ljava/lang/String;

    .line 1270
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_StorageCID:Ljava/lang/String;

    .line 1271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$InternalDB;->mCryptoPolicy:I

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/EncryptService$InternalDB;->init()V

    .line 1276
    return-void
.end method


# virtual methods
.method protected getCryptoPolicy()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/android/server/EncryptService$InternalDB;->mCryptoPolicy:I

    return v0
.end method

.method protected getPwdHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_PwdHashCode:Ljava/lang/String;

    return-object v0
.end method

.method protected getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_State:Ljava/lang/String;

    return-object v0
.end method

.method protected getStorageCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_StorageCID:Ljava/lang/String;

    return-object v0
.end method

.method protected getWorkingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_WorkingPath:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 1279
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/server/EncryptService$InternalDB;->m_State:Ljava/lang/String;

    .line 1280
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_PwdHashCode:Ljava/lang/String;

    .line 1281
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_WorkingPath:Ljava/lang/String;

    .line 1282
    const-string v0, ""

    iput-object v1, p0, Lcom/android/server/EncryptService$InternalDB;->m_StorageCID:Ljava/lang/String;

    .line 1283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$InternalDB;->mCryptoPolicy:I

    .line 1284
    return-void
.end method

.method protected setCryptoPolicy(I)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 1325
    iput p1, p0, Lcom/android/server/EncryptService$InternalDB;->mCryptoPolicy:I

    .line 1326
    return-void
.end method

.method protected setPwdHashCode(Ljava/lang/String;)V
    .locals 0
    .parameter "sPwdHashCode"

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/server/EncryptService$InternalDB;->m_PwdHashCode:Ljava/lang/String;

    .line 1308
    return-void
.end method

.method protected setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/android/server/EncryptService$InternalDB;->m_State:Ljava/lang/String;

    .line 1299
    return-void
.end method

.method protected setStorageCID(Ljava/lang/String;)V
    .locals 1
    .parameter "cid"

    .prologue
    .line 1288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1289
    iput-object p1, p0, Lcom/android/server/EncryptService$InternalDB;->m_StorageCID:Ljava/lang/String;

    .line 1290
    :cond_0
    return-void
.end method

.method protected setWorkingPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sPath"

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/server/EncryptService$InternalDB;->m_WorkingPath:Ljava/lang/String;

    .line 1318
    return-void
.end method

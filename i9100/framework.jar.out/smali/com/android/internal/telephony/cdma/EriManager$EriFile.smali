.class Lcom/android/internal/telephony/cdma/EriManager$EriFile;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriFile"
.end annotation


# instance fields
.field public mCallPromptId:[Ljava/lang/String;

.field public mEriFileType:I

.field public mNumberOfEriEntries:I

.field public mRoamIndTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/EriInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mVersionNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const-string v3, ""

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 57
    iput v2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v3, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.class public Landroid/net/http/SslCertificate;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/SslCertificate$DName;
    }
.end annotation


# static fields
.field private static ISO_8601_DATE_FORMAT:Ljava/lang/String; = null

.field private static final ISSUED_BY:Ljava/lang/String; = "issued-by"

.field private static final ISSUED_TO:Ljava/lang/String; = "issued-to"

.field private static final VALID_NOT_AFTER:Ljava/lang/String; = "valid-not-after"

.field private static final VALID_NOT_BEFORE:Ljava/lang/String; = "valid-not-before"


# instance fields
.field private mIssuedBy:Landroid/net/http/SslCertificate$DName;

.field private mIssuedTo:Landroid/net/http/SslCertificate$DName;

.field private mValidNotAfter:Ljava/util/Date;

.field private mValidNotBefore:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "yyyy-MM-dd HH:mm:ssZ"

    sput-object v0, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "issuedTo"
    .parameter "issuedBy"
    .parameter "validNotBefore"
    .parameter "validNotAfter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p3}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {p4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .parameter "issuedTo"
    .parameter "issuedBy"
    .parameter "validNotBefore"
    .parameter "validNotAfter"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/http/SslCertificate$DName;

    invoke-direct {v0, p0, p1}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    new-instance v0, Landroid/net/http/SslCertificate$DName;

    invoke-direct {v0, p0, p2}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-static {p3}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {p4}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .parameter "certificate"

    .prologue
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method private static cloneDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .parameter "date"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_0
.end method

.method private static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "string"

    .prologue
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;
    .locals 5
    .parameter "bundle"

    .prologue
    if-eqz p0, :cond_0

    new-instance v0, Landroid/net/http/SslCertificate;

    const-string v1, "issued-to"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issued-by"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "valid-not-before"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "valid-not-after"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;
    .locals 3
    .parameter "certificate"

    .prologue
    const/4 v0, 0x0

    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "issued-to"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "issued-by"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "valid-not-before"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "valid-not-after"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIssuedBy()Landroid/net/http/SslCertificate$DName;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public getIssuedTo()Landroid/net/http/SslCertificate$DName;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public getValidNotAfter()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotAfterDate()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotBefore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotBeforeDate()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ";\n"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Issued by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

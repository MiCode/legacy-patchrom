.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field bodyBuilder:Ljava/lang/StringBuilder;

.field current:Landroid/sax/Element;

.field depth:I

.field locator:Lorg/xml/sax/Locator;

.field final synthetic this$0:Landroid/sax/RootElement;


# direct methods
.method constructor <init>(Landroid/sax/RootElement;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/sax/RootElement$Handler;->depth:I

    iput-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iput-object v1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .local v1, current:Landroid/sax/Element;
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    iget v3, v1, Landroid/sax/Element;->depth:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    invoke-interface {v2}, Landroid/sax/EndElementListener;->end()V

    :cond_0
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, body:Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    invoke-interface {v2, v0}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    .end local v0           #body:Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object v2, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    :cond_2
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "e"
    .parameter "attributes"

    .prologue
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    :cond_0
    iget-object v0, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/sax/Element;->visited:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget v3, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    .local v2, depth:I
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered mixed content within text element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v3, v4, v5}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    :cond_2
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v3, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v1, v3, Landroid/sax/Element;->children:Landroid/sax/Children;

    .local v1, children:Landroid/sax/Children;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .local v0, child:Landroid/sax/Element;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method

.method startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    .local v0, root:Landroid/sax/Element;
    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroid/sax/BadXmlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root element name does not match. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v1, v2, v3}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    :cond_1
    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    return-void
.end method

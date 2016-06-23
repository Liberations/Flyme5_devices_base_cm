.class final Lcom/android/dex/Dex$ProtoIdTable;
.super Ljava/util/AbstractList;
.source "Dex.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProtoIdTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/android/dex/ProtoId;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/dex/Dex$ProtoIdTable;->this$0:Lcom/android/dex/Dex;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dex/Dex;
    .param p2, "x1"    # Lcom/android/dex/Dex$1;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/dex/ProtoId;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/dex/Dex$ProtoIdTable;->this$0:Lcom/android/dex/Dex;

    # getter for: Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;
    invoke-static {v0}, Lcom/android/dex/Dex;->access$1000(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    # invokes: Lcom/android/dex/Dex;->checkBounds(II)V
    invoke-static {p1, v0}, Lcom/android/dex/Dex;->access$1100(II)V

    .line 924
    iget-object v0, p0, Lcom/android/dex/Dex$ProtoIdTable;->this$0:Lcom/android/dex/Dex;

    iget-object v1, p0, Lcom/android/dex/Dex$ProtoIdTable;->this$0:Lcom/android/dex/Dex;

    # getter for: Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;
    invoke-static {v1}, Lcom/android/dex/Dex;->access$1000(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0xc

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readProtoId()Lcom/android/dex/ProtoId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex$ProtoIdTable;->get(I)Lcom/android/dex/ProtoId;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/dex/Dex$ProtoIdTable;->this$0:Lcom/android/dex/Dex;

    # getter for: Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;
    invoke-static {v0}, Lcom/android/dex/Dex;->access$1000(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    return v0
.end method

.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final THE_ERROR_CODE:I = 0x0

.field private static final THE_REASON:Ljava/lang/String; = "Data truncation"

.field private static final THE_SQLSTATE_READ:Ljava/lang/String; = "01004"

.field private static final THE_SQLSTATE_WRITE:Ljava/lang/String; = "22001"

.field private static final serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private dataSize:I

.field private index:I

.field private parameter:Z

.field private read:Z

.field private transferSize:I


# direct methods
.method public constructor <init>(IZZII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string v0, "Data truncation"

    const-string v1, "01004"

    invoke-direct {p0, v0, v1, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    .line 34
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 36
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    .line 38
    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 40
    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 73
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    .line 74
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 75
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    .line 76
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 77
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 78
    return-void
.end method

.method public constructor <init>(IZZIILjava/lang/Throwable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I
    .param p6, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v1, "Data truncation"

    if-eqz p3, :cond_0

    const-string v0, "01004"

    :goto_0
    invoke-direct {p0, v1, v0, v2, p6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 32
    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    .line 34
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 36
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    .line 38
    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 40
    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 107
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    .line 108
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 109
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    .line 110
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 111
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 112
    return-void

    .line 105
    :cond_0
    const-string v0, "22001"

    goto :goto_0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    return v0
.end method

.method public getParameter()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    return v0
.end method

.method public getRead()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    return v0
.end method

.method public getTransferSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    return v0
.end method

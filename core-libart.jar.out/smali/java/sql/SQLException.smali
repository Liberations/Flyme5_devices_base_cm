.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/sql/SQLException$InternalIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "theReason"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;
    .param p3, "theErrorCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 99
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 100
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;
    .param p3, "theErrorCode"    # I
    .param p4, "theCause"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;
    .param p3, "theCause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 151
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theCause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "theCause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 115
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 116
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 1
    .param p0, "x0"    # Ljava/sql/SQLException;

    .prologue
    .line 40
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/sql/SQLException$InternalIterator;

    invoke-direct {v0, p0}, Ljava/sql/SQLException$InternalIterator;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .locals 1
    .param p1, "ex"    # Ljava/sql/SQLException;

    .prologue
    .line 220
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iput-object p1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    goto :goto_0
.end method

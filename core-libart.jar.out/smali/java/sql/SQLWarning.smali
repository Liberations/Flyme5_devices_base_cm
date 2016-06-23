.class public Ljava/sql/SQLWarning;
.super Ljava/sql/SQLException;
.source "SQLWarning.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365d2d0aa3e484d8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;
    .param p3, "theErrorCode"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getNextWarning()Ljava/sql/SQLWarning;
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    .line 134
    .local v0, "next":Ljava/sql/SQLException;
    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    .end local v0    # "next":Ljava/sql/SQLException;
    :goto_0
    return-object v0

    .line 137
    .restart local v0    # "next":Ljava/sql/SQLException;
    :cond_0
    instance-of v1, v0, Ljava/sql/SQLWarning;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Ljava/sql/SQLWarning;

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "SQLWarning chain holds value that is not a SQLWarning"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNextWarning(Ljava/sql/SQLWarning;)V
    .locals 0
    .param p1, "w"    # Ljava/sql/SQLWarning;

    .prologue
    .line 150
    invoke-super {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 151
    return-void
.end method

.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DETACHED:I = -0x3

.field private static final NONE:I = -0x1

.field private static final REMOVED:I = -0x2


# instance fields
.field private cursor:I

.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private prevCycles:I

.field private prevTakeIndex:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v2, -0x1

    .line 1022
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1025
    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1026
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1028
    :try_start_0
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_0

    .line 1030
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1031
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1032
    const/4 v2, -0x3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1053
    return-void

    .line 1034
    :cond_0
    :try_start_1
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1035
    .local v1, "takeIndex":I
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1036
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1037
    invoke-direct {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1038
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v2, :cond_1

    .line 1039
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 1044
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v2, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1051
    .end local v1    # "takeIndex":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1041
    .restart local v1    # "takeIndex":I
    :cond_1
    :try_start_2
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 1042
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private detach()V
    .locals 2

    .prologue
    .line 1135
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-ltz v0, :cond_0

    .line 1137
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1139
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    .line 1141
    :cond_0
    return-void
.end method

.method private distance(III)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    sub-int v0, p1, p2

    .line 1265
    .local v0, "distance":I
    if-gez v0, :cond_0

    .line 1266
    add-int/2addr v0, p3

    .line 1267
    :cond_0
    return v0
.end method

.method private incCursor(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1062
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result p1

    .line 1063
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne p1, v0, :cond_0

    .line 1064
    const/4 p1, -0x1

    .line 1065
    :cond_0
    return p1
.end method

.method private incorporateDequeues()V
    .locals 10

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v9, -0x2

    .line 1092
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 1093
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1094
    .local v8, "takeIndex":I
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1095
    .local v7, "prevCycles":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1097
    .local v3, "prevTakeIndex":I
    if-ne v0, v7, :cond_0

    if-eq v8, v3, :cond_4

    .line 1098
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v6, v1

    .line 1101
    .local v6, "len":I
    sub-int v1, v0, v7

    mul-int/2addr v1, v6

    sub-int v2, v8, v3

    add-int/2addr v1, v2

    int-to-long v4, v1

    .line 1105
    .local v4, "dequeues":J
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1107
    :cond_1
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1108
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1109
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1110
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1112
    :cond_3
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v1, :cond_5

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v1, :cond_5

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-gez v1, :cond_5

    .line 1113
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1119
    .end local v4    # "dequeues":J
    .end local v6    # "len":I
    :cond_4
    :goto_0
    return-void

    .line 1115
    .restart local v4    # "dequeues":J
    .restart local v6    # "len":I
    :cond_5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1116
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_0
.end method

.method private invalidated(IIJI)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "dequeues"    # J
    .param p5, "length"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, 0x0

    .line 1074
    if-gez p1, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v1

    .line 1076
    :cond_1
    sub-int v0, p1, p2

    .line 1077
    .local v0, "distance":I
    if-gez v0, :cond_2

    .line 1078
    add-int/2addr v0, p5

    .line 1079
    :cond_2
    int-to-long v2, v0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private noNext()V
    .locals 3

    .prologue
    .line 1158
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1159
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1165
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1166
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_0

    .line 1167
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1169
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1177
    return-void

    .line 1175
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1151
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1154
    :goto_0
    return v0

    .line 1153
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    .line 1154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDetached()Z
    .locals 1

    .prologue
    .line 1057
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1182
    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    .line 1183
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 1184
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1185
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1187
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1188
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1191
    :cond_1
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1192
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1193
    .local v0, "cursor":I
    if-ltz v0, :cond_2

    .line 1194
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1196
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1204
    return-object v2

    .line 1198
    :cond_2
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1199
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1202
    .end local v0    # "cursor":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public remove()V
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v4, -0x1

    .line 1209
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1210
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1213
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1214
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1215
    .local v1, "lastRet":I
    const/4 v3, -0x1

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1216
    if-ltz v1, :cond_4

    .line 1217
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1218
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 1232
    :cond_1
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v3, :cond_2

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v3, :cond_2

    .line 1233
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1239
    return-void

    .line 1220
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1222
    .local v0, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1223
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 1224
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1235
    .end local v0    # "lastItem":Ljava/lang/Object;, "TE;"
    .end local v1    # "lastRet":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1226
    .restart local v1    # "lastRet":I
    :cond_4
    if-ne v1, v4, :cond_1

    .line 1227
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method removedAt(I)Z
    .locals 14
    .param p1, "removedIndex"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v11, 0x1

    .line 1277
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1323
    :goto_0
    return v11

    .line 1280
    :cond_0
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v12, v12, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v2, v12, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 1281
    .local v2, "cycles":I
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v9, v12, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1282
    .local v9, "takeIndex":I
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1283
    .local v6, "prevCycles":I
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1284
    .local v7, "prevTakeIndex":I
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v12, v12, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v12

    .line 1285
    .local v4, "len":I
    sub-int v1, v2, v6

    .line 1286
    .local v1, "cycleDiff":I
    if-ge p1, v9, :cond_1

    .line 1287
    add-int/lit8 v1, v1, 0x1

    .line 1288
    :cond_1
    mul-int v12, v1, v4

    sub-int v13, p1, v7

    add-int v8, v12, v13

    .line 1291
    .local v8, "removedDistance":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1292
    .local v0, "cursor":I
    if-ltz v0, :cond_2

    .line 1293
    invoke-direct {p0, v0, v7, v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v10

    .line 1294
    .local v10, "x":I
    if-ne v10, v8, :cond_5

    .line 1295
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v12, v12, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne v0, v12, :cond_2

    .line 1296
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1303
    .end local v10    # "x":I
    :cond_2
    :goto_1
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1304
    .local v3, "lastRet":I
    if-ltz v3, :cond_3

    .line 1305
    invoke-direct {p0, v3, v7, v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v10

    .line 1306
    .restart local v10    # "x":I
    if-ne v10, v8, :cond_6

    .line 1307
    const/4 v3, -0x2

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1311
    .end local v10    # "x":I
    :cond_3
    :goto_2
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1312
    .local v5, "nextIndex":I
    if-ltz v5, :cond_8

    .line 1313
    invoke-direct {p0, v5, v7, v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v10

    .line 1314
    .restart local v10    # "x":I
    if-ne v10, v8, :cond_7

    .line 1315
    const/4 v5, -0x2

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1323
    .end local v10    # "x":I
    :cond_4
    :goto_3
    const/4 v11, 0x0

    goto :goto_0

    .line 1298
    .end local v3    # "lastRet":I
    .end local v5    # "nextIndex":I
    .restart local v10    # "x":I
    :cond_5
    if-le v10, v8, :cond_2

    .line 1300
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v12, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_1

    .line 1308
    .restart local v3    # "lastRet":I
    :cond_6
    if-le v10, v8, :cond_3

    .line 1309
    iget-object v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v12, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    goto :goto_2

    .line 1316
    .restart local v5    # "nextIndex":I
    :cond_7
    if-le v10, v8, :cond_4

    .line 1317
    iget-object v11, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v11, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v5

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_3

    .line 1319
    .end local v10    # "x":I
    :cond_8
    if-gez v0, :cond_4

    if-gez v5, :cond_4

    if-gez v3, :cond_4

    .line 1320
    const/4 v12, -0x3

    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, -0x2

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1250
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v0, :cond_0

    .line 1251
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1252
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_1

    .line 1253
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1256
    :cond_1
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1261
    return-void
.end method

.method takeIndexWrapped()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, 0x1

    .line 1333
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    :goto_0
    return v0

    .line 1335
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v1, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_1

    .line 1338
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    goto :goto_0

    .line 1341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

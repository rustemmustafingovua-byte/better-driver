.class public final synthetic Lod/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:D

.field public final synthetic n:D


# direct methods
.method public synthetic constructor <init>(ZDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/o6;->l:Z

    iput-wide p2, p0, Lod/o6;->m:D

    iput-wide p4, p0, Lod/o6;->n:D

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lod/o6;->l:Z

    iget-wide v3, v0, Lod/o6;->m:D

    iget-wide v5, v0, Lod/o6;->n:D

    const-string v0, " \u0434\u043e "

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Lod/v6;->e(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Lod/v6;->e(D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0412\u0456\u0434 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-static {v3, v4}, Lod/v6;->e(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Lod/v6;->e(D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0447\u0438\u0441\u043b\u043e \u0432\u0456\u0434 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    const/16 v21, 0x0

    const v22, 0x1fffe

    move-object/from16 v19, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_3

    :cond_2
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method

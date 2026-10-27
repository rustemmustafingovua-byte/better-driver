.class public final synthetic Lod/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/y4;->l:Z

    iput-boolean p2, p0, Lod/y4;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lu/y0;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$Button"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v13, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    and-int/2addr v2, v4

    invoke-virtual {v10, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lod/y4;->l:Z

    if-eqz v1, :cond_1

    const v0, 0x78542fd6

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    const/16 v0, 0x14

    int-to-float v0, v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, v0}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/4 v0, 0x2

    int-to-float v5, v0

    sget-wide v3, Lm1/p;->c:J

    const/16 v11, 0x1b6

    const/16 v12, 0x38

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v12}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    invoke-virtual {v10, v13}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_1
    const v1, 0x6f3c94cc

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    iget-boolean v0, v0, Lod/y4;->m:Z

    if-eqz v0, :cond_2

    const-string v0, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e \u2713"

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_2
    const-string v0, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438"

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    const/16 v23, 0x0

    const v24, 0x1fffe

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move v0, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method

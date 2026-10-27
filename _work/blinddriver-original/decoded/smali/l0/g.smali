.class public final Ll0/g;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/n;
.implements Le2/o;


# instance fields
.field public B:Ll0/i;

.field public final C:Ll0/q;


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;)V
    .locals 13

    invoke-direct {p0}, Le2/k;-><init>()V

    move-object/from16 v11, p11

    iput-object v11, p0, Ll0/g;->B:Ll0/i;

    new-instance v0, Ll0/q;

    const/4 v12, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Ll0/q;-><init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;Li9/c;)V

    invoke-virtual {p0, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, p0, Ll0/g;->C:Ll0/q;

    iget-object p0, p0, Ll0/g;->B:Ll0/i;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Do not use SelectionCapableStaticTextModifier unless selectionController != null"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1, p2, p3}, Ll0/q;->I(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1, p2, p3, p4}, Ll0/q;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1, p2, p3}, Ll0/q;->b0(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1, p2, p3}, Ll0/q;->o(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final q0(Le2/h1;)V
    .locals 3

    iget-object p0, p0, Ll0/g;->B:Ll0/i;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll0/i;->o:Ll0/m;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Ll0/m;->a(Ll0/m;Le2/h1;Lp2/j0;I)Ll0/m;

    move-result-object p1

    iput-object p1, p0, Ll0/i;->o:Ll0/m;

    iget-object p1, p0, Ll0/i;->m:Lm0/i1;

    iget-wide v0, p0, Ll0/i;->l:J

    const/4 p0, 0x0

    iput-boolean p0, p1, Lm0/i1;->a:Z

    iget-object p0, p1, Lm0/i1;->e:Lm0/i0;

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm0/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1, p2, p3}, Ll0/q;->x0(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 0

    iget-object p0, p0, Ll0/g;->C:Ll0/q;

    invoke-virtual {p0, p1}, Ll0/q;->z(Le2/j0;)V

    return-void
.end method

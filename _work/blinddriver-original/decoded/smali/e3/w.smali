.class public final Le3/w;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/l1;
.implements Le2/i;


# instance fields
.field public final B:Lk1/b0;

.field public C:Lx/a0;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Le2/k;-><init>()V

    new-instance v0, Lk1/b0;

    new-instance v1, Le3/v;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x2

    const-class v4, Le3/w;

    const-string v5, "onFocusStateChange"

    const-string v6, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Le3/v;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    const/16 p0, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lk1/b0;-><init>(IILi9/e;)V

    invoke-virtual {v3, v0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v0, v3, Le3/w;->B:Lk1/b0;

    return-void
.end method


# virtual methods
.method public final d0()V
    .locals 3

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v1, Ld5/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lx/a0;

    iget-object v1, p0, Le3/w;->B:Lk1/b0;

    invoke-virtual {v1}, Lk1/b0;->R0()Lk1/z;

    move-result-object v1

    invoke-virtual {v1}, Lk1/z;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le3/w;->C:Lx/a0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lx/a0;->b()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx/a0;->a()Lx/a0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Le3/w;->C:Lx/a0;

    :cond_2
    return-void
.end method

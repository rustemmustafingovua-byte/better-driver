.class public final Lmd/b;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Z

.field public m:Lca/a;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lua/nav/support/a;

.field public p:I


# direct methods
.method public constructor <init>(Lua/nav/support/a;La9/c;)V
    .locals 0

    iput-object p1, p0, Lmd/b;->o:Lua/nav/support/a;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmd/b;->n:Ljava/lang/Object;

    iget p1, p0, Lmd/b;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmd/b;->p:I

    iget-object p1, p0, Lmd/b;->o:Lua/nav/support/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lua/nav/support/a;->e(ZLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

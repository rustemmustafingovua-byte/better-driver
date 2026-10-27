.class public final Lmd/c;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lca/c;

.field public n:J

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lua/nav/support/a;

.field public q:I


# direct methods
.method public constructor <init>(Lua/nav/support/a;La9/c;)V
    .locals 0

    iput-object p1, p0, Lmd/c;->p:Lua/nav/support/a;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmd/c;->o:Ljava/lang/Object;

    iget p1, p0, Lmd/c;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmd/c;->q:I

    iget-object p1, p0, Lmd/c;->p:Lua/nav/support/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lua/nav/support/a;->g(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

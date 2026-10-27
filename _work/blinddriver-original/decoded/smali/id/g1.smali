.class public final Lid/g1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/io/File;

.field public m:Ljava/io/File;

.field public n:Lj9/u;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lua/nav/routing/i;

.field public q:I


# direct methods
.method public constructor <init>(Lua/nav/routing/i;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/g1;->p:Lua/nav/routing/i;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lid/g1;->o:Ljava/lang/Object;

    iget p1, p0, Lid/g1;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/g1;->q:I

    iget-object p1, p0, Lid/g1;->p:Lua/nav/routing/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lua/nav/routing/i;->d(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

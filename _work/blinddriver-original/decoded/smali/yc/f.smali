.class public final Lyc/f;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lua/nav/geo/c;

.field public n:Ljava/io/File;

.field public o:Ljava/io/File;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lua/nav/geo/c;

.field public r:I


# direct methods
.method public constructor <init>(Lua/nav/geo/c;La9/c;)V
    .locals 0

    iput-object p1, p0, Lyc/f;->q:Lua/nav/geo/c;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyc/f;->p:Ljava/lang/Object;

    iget p1, p0, Lyc/f;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyc/f;->r:I

    iget-object p1, p0, Lyc/f;->q:Lua/nav/geo/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lua/nav/geo/c;->f(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

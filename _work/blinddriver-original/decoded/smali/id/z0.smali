.class public final Lid/z0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lid/c1;

.field public n:I


# direct methods
.method public constructor <init>(Lid/c1;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/z0;->m:Lid/c1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lid/z0;->l:Ljava/lang/Object;

    iget p1, p0, Lid/z0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/z0;->n:I

    iget-object p1, p0, Lid/z0;->m:Lid/c1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lid/c1;->j(Lua/nav/routing/Favorite;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

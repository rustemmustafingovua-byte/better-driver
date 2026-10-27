.class public final Lf2/p0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lf2/q0;

.field public n:I


# direct methods
.method public constructor <init>(Lf2/q0;La9/c;)V
    .locals 0

    iput-object p1, p0, Lf2/p0;->m:Lf2/q0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf2/p0;->l:Ljava/lang/Object;

    iget p1, p0, Lf2/p0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf2/p0;->n:I

    iget-object p1, p0, Lf2/p0;->m:Lf2/q0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lf2/q0;->a(Lk0/s;La9/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

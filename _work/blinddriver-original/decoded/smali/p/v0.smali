.class public final Lp/v0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ls/f;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lp/y0;

.field public o:I


# direct methods
.method public constructor <init>(Lp/y0;La9/c;)V
    .locals 0

    iput-object p1, p0, Lp/v0;->n:Lp/y0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp/v0;->m:Ljava/lang/Object;

    iget p1, p0, Lp/v0;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp/v0;->o:I

    iget-object p1, p0, Lp/v0;->n:Lp/y0;

    invoke-static {p1, p0}, Lp/y0;->M0(Lp/y0;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

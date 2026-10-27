.class public final Lh1/b;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lw9/b;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lh1/d;

.field public o:I


# direct methods
.method public constructor <init>(Lh1/d;La9/c;)V
    .locals 0

    iput-object p1, p0, Lh1/b;->n:Lh1/d;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lh1/b;->m:Ljava/lang/Object;

    iget p1, p0, Lh1/b;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh1/b;->o:I

    iget-object p1, p0, Lh1/b;->n:Lh1/d;

    invoke-virtual {p1, p0}, Lh1/d;->a(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

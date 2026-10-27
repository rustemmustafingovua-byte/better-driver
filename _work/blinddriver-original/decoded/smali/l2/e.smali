.class public final Ll2/e;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ll2/f;

.field public n:I


# direct methods
.method public constructor <init>(Ll2/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Ll2/e;->m:Ll2/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ll2/e;->l:Ljava/lang/Object;

    iget p1, p0, Ll2/e;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ll2/e;->n:I

    iget-object p1, p0, Ll2/e;->m:Ll2/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ll2/f;->b(FLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lu8/x;
.super Lu8/b;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:I

.field public final synthetic p:Lu8/y;


# direct methods
.method public constructor <init>(Lu8/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/x;->p:Lu8/y;

    iget v0, p1, Lu8/y;->o:I

    iput v0, p0, Lu8/x;->n:I

    iget p1, p1, Lu8/y;->n:I

    iput p1, p0, Lu8/x;->o:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lu8/x;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lu8/b;->l:I

    return-void

    :cond_0
    iget-object v1, p0, Lu8/x;->p:Lu8/y;

    iget-object v2, v1, Lu8/y;->l:[Ljava/lang/Object;

    iget v3, p0, Lu8/x;->o:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lu8/b;->m:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lu8/b;->l:I

    add-int/2addr v3, v2

    iget v1, v1, Lu8/y;->m:I

    rem-int/2addr v3, v1

    iput v3, p0, Lu8/x;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lu8/x;->n:I

    return-void
.end method

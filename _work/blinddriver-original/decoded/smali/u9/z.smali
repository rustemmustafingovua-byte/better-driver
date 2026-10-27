.class public final Lu9/z;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lu9/z;->l:Ljava/lang/Object;

    iget p1, p0, Lu9/z;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lu9/z;->m:I

    invoke-static {p0}, Lu9/v;->d(La9/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

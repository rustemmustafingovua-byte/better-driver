.class public Lg4/b;
.super Landroidx/lifecycle/z0;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/fragment/app/z0;


# instance fields
.field public final b:Lk/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/fragment/app/z0;

    invoke-direct {v0}, Landroidx/fragment/app/z0;-><init>()V

    sput-object v0, Lg4/b;->c:Landroidx/fragment/app/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/z0;-><init>()V

    new-instance v0, Lk/w0;

    invoke-direct {v0}, Lk/w0;-><init>()V

    iput-object v0, p0, Lg4/b;->b:Lk/w0;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    iget-object p0, p0, Lg4/b;->b:Lk/w0;

    iget v0, p0, Lk/w0;->n:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v2, p0, Lk/w0;->m:[Ljava/lang/Object;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lk/w0;->n:I

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lk/w0;->h(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.class public abstract Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/x;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Ln1/d;->e:Ln1/q;

    iget v1, v0, Ln1/c;->c:I

    shl-int/lit8 v2, v1, 0x6

    or-int/2addr v1, v2

    new-instance v2, Ln1/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v0, v3}, Ln1/g;-><init>(Ln1/c;Ln1/c;I)V

    iget v3, v0, Ln1/c;->c:I

    sget-object v4, Ln1/d;->x:Ln1/l;

    iget v5, v4, Ln1/c;->c:I

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v3

    new-instance v6, Ln1/g;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, Ln1/g;-><init>(Ln1/c;Ln1/c;I)V

    iget v8, v4, Ln1/c;->c:I

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v8

    new-instance v8, Ln1/g;

    invoke-direct {v8, v4, v0, v7}, Ln1/g;-><init>(Ln1/c;Ln1/c;I)V

    sget-object v0, Lk/l;->a:Lk/x;

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/x;->h(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Lk/x;->h(ILjava/lang/Object;)V

    invoke-virtual {v0, v3, v8}, Lk/x;->h(ILjava/lang/Object;)V

    sput-object v0, Ln1/h;->a:Lk/x;

    return-void
.end method

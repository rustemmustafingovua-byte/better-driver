.class public abstract Lbb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    iget-object v0, v0, Lbb/j;->l:[B

    sput-object v0, Lbb/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    return-void
.end method

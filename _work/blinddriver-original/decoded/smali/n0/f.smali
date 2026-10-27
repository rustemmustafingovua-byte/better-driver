.class public abstract Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln/n1;

    sget-object v1, Ln/w;->b:Lc2/c0;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v3, v2, v1}, Ln/n1;-><init>(IILn/v;)V

    sput-object v0, Ln0/f;->a:Ln/n1;

    return-void
.end method

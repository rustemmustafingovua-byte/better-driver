.class public final Lja/b;
.super Lja/c;
.source "SourceFile"


# static fields
.field public static final n:Lja/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lja/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lu8/k;

    invoke-direct {v1}, Lu8/k;-><init>()V

    iput-object v1, v0, Lja/c;->m:Ljava/lang/Object;

    sput-object v0, Lja/b;->n:Lja/b;

    return-void
.end method

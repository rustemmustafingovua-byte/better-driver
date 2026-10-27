.class public final Lw5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lw5/a;


# instance fields
.field public a:[[I

.field public b:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    new-array v2, v1, [[I

    iput-object v2, v0, Lw5/a;->a:[[I

    new-array v1, v1, [[I

    iput-object v1, v0, Lw5/a;->b:[[I

    sput-object v0, Lw5/a;->c:Lw5/a;

    return-void
.end method

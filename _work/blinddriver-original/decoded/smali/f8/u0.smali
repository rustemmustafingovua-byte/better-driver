.class public final enum Lf8/u0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf8/b4;


# static fields
.field public static final enum m:Lf8/u0;

.field public static final enum n:Lf8/u0;

.field public static final enum o:Lf8/u0;

.field public static final synthetic p:[Lf8/u0;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lf8/u0;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lf8/u0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf8/u0;->m:Lf8/u0;

    new-instance v1, Lf8/u0;

    const-string v2, "JS_STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lf8/u0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/u0;->n:Lf8/u0;

    new-instance v2, Lf8/u0;

    const-string v3, "JS_NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lf8/u0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lf8/u0;->o:Lf8/u0;

    filled-new-array {v0, v1, v2}, [Lf8/u0;

    move-result-object v0

    sput-object v0, Lf8/u0;->p:[Lf8/u0;

    invoke-static {}, Lf8/u0;->values()[Lf8/u0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lf8/u0;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/u0;
    .locals 1

    const-class v0, Lf8/u0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/u0;

    return-object p0
.end method

.method public static values()[Lf8/u0;
    .locals 1

    sget-object v0, Lf8/u0;->p:[Lf8/u0;

    invoke-virtual {v0}, [Lf8/u0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/u0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lf8/u0;->l:I

    return p0
.end method

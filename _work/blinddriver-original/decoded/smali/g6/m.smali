.class public final Lg6/m;
.super Lg6/l;
.source "SourceFile"


# static fields
.field public static final q:Lg6/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/m;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lg6/l;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/m;->q:Lg6/m;

    return-void
.end method


# virtual methods
.method public final Z(Ljava/text/DateFormat;Ljava/lang/String;)Lg6/l;
    .locals 1

    new-instance v0, Lg6/m;

    invoke-direct {v0, p0, p1, p2}, Lg6/l;-><init>(Lg6/l;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

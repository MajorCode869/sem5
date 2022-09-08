{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "aaeccb95",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "papermill": {
     "duration": 0.007713,
     "end_time": "2022-09-08T04:26:47.934270",
     "exception": false,
     "start_time": "2022-09-08T04:26:47.926557",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Probability and Statistics (UCS410)\n",
    "# Experiment 3: Probability distributions"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "2e39a2aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:47.947624Z",
     "iopub.status.busy": "2022-09-08T04:26:47.946066Z",
     "iopub.status.idle": "2022-09-08T04:26:48.078929Z",
     "shell.execute_reply": "2022-09-08T04:26:48.076895Z"
    },
    "papermill": {
     "duration": 0.140988,
     "end_time": "2022-09-08T04:26:48.080808",
     "exception": false,
     "start_time": "2022-09-08T04:26:47.939820",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Hello World!\"\n"
     ]
    }
   ],
   "source": [
    "my_function <- function() {\n",
    "  print(\"Hello World!\")\n",
    "}\n",
    "\n",
    "my_function()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "d248e9b1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.121715Z",
     "iopub.status.busy": "2022-09-08T04:26:48.092175Z",
     "iopub.status.idle": "2022-09-08T04:26:48.137398Z",
     "shell.execute_reply": "2022-09-08T04:26:48.136057Z"
    },
    "papermill": {
     "duration": 0.053692,
     "end_time": "2022-09-08T04:26:48.139544",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.085852",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Peter Griffin'"
      ],
      "text/latex": [
       "'Peter Griffin'"
      ],
      "text/markdown": [
       "'Peter Griffin'"
      ],
      "text/plain": [
       "[1] \"Peter Griffin\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "my_function <- function(fname, lname) {\n",
    "  paste(fname, lname)\n",
    "}\n",
    "\n",
    "my_function(\"Peter\", \"Griffin\") "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "e8ccc1c1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.153509Z",
     "iopub.status.busy": "2022-09-08T04:26:48.152171Z",
     "iopub.status.idle": "2022-09-08T04:26:48.186171Z",
     "shell.execute_reply": "2022-09-08T04:26:48.184643Z"
    },
    "papermill": {
     "duration": 0.042583,
     "end_time": "2022-09-08T04:26:48.187945",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.145362",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'I am from Sweden'"
      ],
      "text/latex": [
       "'I am from Sweden'"
      ],
      "text/markdown": [
       "'I am from Sweden'"
      ],
      "text/plain": [
       "[1] \"I am from Sweden\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'I am from India'"
      ],
      "text/latex": [
       "'I am from India'"
      ],
      "text/markdown": [
       "'I am from India'"
      ],
      "text/plain": [
       "[1] \"I am from India\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'I am from Norway'"
      ],
      "text/latex": [
       "'I am from Norway'"
      ],
      "text/markdown": [
       "'I am from Norway'"
      ],
      "text/plain": [
       "[1] \"I am from Norway\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'I am from USA'"
      ],
      "text/latex": [
       "'I am from USA'"
      ],
      "text/markdown": [
       "'I am from USA'"
      ],
      "text/plain": [
       "[1] \"I am from USA\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "my_function <- function(country = \"Norway\") {\n",
    "  paste(\"I am from\", country)\n",
    "}\n",
    "\n",
    "my_function(\"Sweden\")\n",
    "my_function(\"India\")\n",
    "my_function() # will get the default value, which is Norway\n",
    "my_function(\"USA\") "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "3b9fda71",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.201597Z",
     "iopub.status.busy": "2022-09-08T04:26:48.200383Z",
     "iopub.status.idle": "2022-09-08T04:26:48.216856Z",
     "shell.execute_reply": "2022-09-08T04:26:48.215479Z"
    },
    "papermill": {
     "duration": 0.025044,
     "end_time": "2022-09-08T04:26:48.218580",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.193536",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.00113699930354452"
      ],
      "text/latex": [
       "0.00113699930354452"
      ],
      "text/markdown": [
       "0.00113699930354452"
      ],
      "text/plain": [
       "[1] 0.001136999"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "y<-dbinom(7,12,1/6)\n",
    "y"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cbc4bac1",
   "metadata": {
    "papermill": {
     "duration": 0.005709,
     "end_time": "2022-09-08T04:26:48.230084",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.224375",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Q1.Roll 12 dice simultaneously, and let X denotes the number of 6’s that appear. Calculate the probability of getting 7, 8 or 9, 6’s using R. (Try using the function pbinom; If we set S = {get a 6 on one roll}, P(S) = 1/6 and the rolls constitute Bernoulli trials; thus X ∼ binom(size=12, prob=1/6) and we are looking for P(7 ≤ X ≤ 9)**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f13d403c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.245297Z",
     "iopub.status.busy": "2022-09-08T04:26:48.244018Z",
     "iopub.status.idle": "2022-09-08T04:26:48.262563Z",
     "shell.execute_reply": "2022-09-08T04:26:48.257426Z"
    },
    "papermill": {
     "duration": 0.028002,
     "end_time": "2022-09-08T04:26:48.264381",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.236379",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.00129175754208255"
      ],
      "text/latex": [
       "0.00129175754208255"
      ],
      "text/markdown": [
       "0.00129175754208255"
      ],
      "text/plain": [
       "[1] 0.001291758"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "\n",
    "z<-(pbinom(9,size=12,1/6)-pbinom(6,size=12,1/6))\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "552818b7",
   "metadata": {
    "papermill": {
     "duration": 0.005881,
     "end_time": "2022-09-08T04:26:48.276130",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.270249",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Q2.Assume that the test scores of a college entrance exam fits a normal distribution. Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is the percentage of students scoring 84 or more in the exam?**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "844173ab",
   "metadata": {
    "papermill": {
     "duration": 0.005852,
     "end_time": "2022-09-08T04:26:48.287796",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.281944",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "* The total area under a standard normal distribution curve is 100% (that’s “1” as a decimal). For example, the left half of the curve is 50%, or .5. So the probability of a random variable appearing in the left half of the curve is .5. *"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "d8eb4e51",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.302297Z",
     "iopub.status.busy": "2022-09-08T04:26:48.301053Z",
     "iopub.status.idle": "2022-09-08T04:26:48.309893Z",
     "shell.execute_reply": "2022-09-08T04:26:48.308506Z"
    },
    "papermill": {
     "duration": 0.017828,
     "end_time": "2022-09-08T04:26:48.311552",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.293724",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# pnorm() function is the cumulative distribution function which measures the probability that a random number X takes a value less than or equal to x\n",
    "# pnorm(x, mean, sd)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "718bd2b7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.331349Z",
     "iopub.status.busy": "2022-09-08T04:26:48.330151Z",
     "iopub.status.idle": "2022-09-08T04:26:48.343006Z",
     "shell.execute_reply": "2022-09-08T04:26:48.341251Z"
    },
    "papermill": {
     "duration": 0.02793,
     "end_time": "2022-09-08T04:26:48.345365",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.317435",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"There are  21.4917602311272 % values less than 84\"\n"
     ]
    }
   ],
   "source": [
    "num<-(1-pnorm(84,72,15.2))*100\n",
    "print(paste('There are ',num,\"% values less than 84\"))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a7ad0c49",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-25T12:02:04.779947Z",
     "iopub.status.busy": "2022-08-25T12:02:04.778267Z",
     "iopub.status.idle": "2022-08-25T12:02:04.814819Z"
    },
    "papermill": {
     "duration": 0.005846,
     "end_time": "2022-09-08T04:26:48.358092",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.352246",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Q3.On the average, five cars arrive at a particular car wash every hour. Let X count the number of cars that arrive from 10AM to 11AM, then X ∼Poisson(λ = 5). What is probability that no car arrives during this time. Next, suppose the car wash above is in operation from 8AM to 6PM, and we let Y be the number of customers that appear in this period. Since this period covers a total of 10 hours, we get that Y ∼ Poisson(λ = 5×10 = 50). What is the probability that there are between 48 and 50 customers, inclusive?**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "00971435",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.372058Z",
     "iopub.status.busy": "2022-09-08T04:26:48.370861Z",
     "iopub.status.idle": "2022-09-08T04:26:48.383812Z",
     "shell.execute_reply": "2022-09-08T04:26:48.382487Z"
    },
    "papermill": {
     "duration": 0.021902,
     "end_time": "2022-09-08T04:26:48.385667",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.363765",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.00673794699908547"
      ],
      "text/latex": [
       "0.00673794699908547"
      ],
      "text/markdown": [
       "0.00673794699908547"
      ],
      "text/plain": [
       "[1] 0.006737947"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "\n",
    "ppois(0,lambda=5)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "0c4970e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.401729Z",
     "iopub.status.busy": "2022-09-08T04:26:48.400552Z",
     "iopub.status.idle": "2022-09-08T04:26:48.416078Z",
     "shell.execute_reply": "2022-09-08T04:26:48.414761Z"
    },
    "papermill": {
     "duration": 0.026514,
     "end_time": "2022-09-08T04:26:48.419070",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.392556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.167848518849069"
      ],
      "text/latex": [
       "0.167848518849069"
      ],
      "text/markdown": [
       "0.167848518849069"
      ],
      "text/plain": [
       "[1] 0.1678485"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ppois(50,lambda=50)-ppois(47,lambda=50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7bf867a8",
   "metadata": {
    "papermill": {
     "duration": 0.006172,
     "end_time": "2022-09-08T04:26:48.431570",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.425398",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Q4.Suppose in a certain shipment of 250 Pentium processors there are 17 defective processors. A quality control consultant randomly collects 5 processors for inspection to determine whether or not they are defective. Let X denote the number of defectives in the sample. Find the probability of exactly 3 defectives in the sample, that is, find P(X = 3).**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "046f6c64",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.447544Z",
     "iopub.status.busy": "2022-09-08T04:26:48.445751Z",
     "iopub.status.idle": "2022-09-08T04:26:48.458137Z",
     "shell.execute_reply": "2022-09-08T04:26:48.456484Z"
    },
    "papermill": {
     "duration": 0.021811,
     "end_time": "2022-09-08T04:26:48.459945",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.438134",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "y_dhyper<-dhyper(3,17,233,5)\n",
    "# phyper is used for cdf"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "eb088ead",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.475028Z",
     "iopub.status.busy": "2022-09-08T04:26:48.473795Z",
     "iopub.status.idle": "2022-09-08T04:26:48.486174Z",
     "shell.execute_reply": "2022-09-08T04:26:48.484876Z"
    },
    "papermill": {
     "duration": 0.021736,
     "end_time": "2022-09-08T04:26:48.487875",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.466139",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.00235115343595976"
      ],
      "text/latex": [
       "0.00235115343595976"
      ],
      "text/markdown": [
       "0.00235115343595976"
      ],
      "text/plain": [
       "[1] 0.002351153"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "y_dhyper"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "f482814f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.502819Z",
     "iopub.status.busy": "2022-09-08T04:26:48.501532Z",
     "iopub.status.idle": "2022-09-08T04:26:48.753319Z",
     "shell.execute_reply": "2022-09-08T04:26:48.751977Z"
    },
    "papermill": {
     "duration": 0.293356,
     "end_time": "2022-09-08T04:26:48.787419",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.494063",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdfXxXdd348fPdxsYEZAMEBggqoqCEKdEw0YBEUOPG8OYCJPVqhhcoaFqWN6Hd\noFhp3gCJ4g0oEKQkGWaReIUC5uWPwEBoIHjLSO5hwDa2/f7AiBDHuNm+Ox+ezz96yDln396P\nztRX53vO+STKy8sjAADiLyXZAwAAcGQIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBApCV7gBjYvHnz008/vWPHjmQPAgDUCJmZmVdddVX9+vWTPci+hN2BPfvs\nsyNGjEj2FABADZKWljZ06NBkT7EvYXdgJSUlURRNmDDhjDPOSPYsAECSLVq06Fvf+tbuPKhp\nhF1lnXrqqR07dkz2FABAku3cuTPZI3wuD08AAARC2AEABELYAQAEQtgBAARC2AEABELYAQAE\nQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEA\nBELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgB\n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\nKBazsLOkGADA54lT2FlSDACgAnEKO0uKAQBUIE6XtSwpBgBQgTiFnSXFAAAqEKews6QYAEAF\n4hR2t4/uWbR5bvvOlz/z8luFpeX77i4vWjp3Rl6PduNWb+k6srJLigEABCNOD09UxZJiAADB\niFPYVcWSYgAAwYhX2EXRkV5SDAAgGPELuz0SaZnZjTKzkz0GAEANEaeHJwAAqEBoYVe85fWc\nnJycnJxkDwIAUN1i/FXsfpWXFxcUFCR7CgCAJAgt7NLrfmnBggXJngIAIAlCC7tEar3c3Nxk\nTwEAkARxDbuNa1YtX56/dsOWwu0702rXqd+waZu27U7KyUr2XAAASROzsCsv3TztgbsfmjB5\n3rK1n93btG3ngXkj7hxxRZZ32gEAR584hV1p8UfXdDpj0uL1qbUa5Hbv06Fd65xGWRkZabuK\nijatK3gvf8m8uW/cf8uAiZNfXDR/YrP00B74BQCoWJzCbv7NvSYtXt/l+gen3Du0RZ39TF5W\nvH7K6GGDR07ucUPekke7VvuAAADJFKfLWrdNyq+bc93ch4fvt+qiKEpJbzjozqnjcpusnHpH\nNc8GAJB0cQq7twtL6rbsfcDDOp7XuGT7kmqYBwCgRolT2PVtmLlx2b0FxWUVHVS244lpq2tn\n96yuoQAAaoo4hd3to3sWbZ7bvvPlz7z8VmFp+b67y4uWzp2R16PduNVbuo4cmYwBAQCSKU4P\nT7S5avpjb14wZOzzg3s9l5pe/6Q2rZsdl5WRUau0uGjzujXv5q/csHNXIpHoNnTMzGHtkj0s\nAEB1i1PYRVFK3iOzLxz82zFPTpk1Z8GydxbmL/n0ul0iJaNF69N7dOs5IG94307NkzslAEBS\nxCvsoiiKmuf2G5Xbb1QUle/asWnT1sIdxemZx9TLys70UmIA4OgWv7DbI5GWmd0oMzvZYwAA\n1BBxengCAIAKCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQKQle4DDVVa89pUX/7B4xUdlGVltzzyn17lnpCWSPRMA\nQDLEKey6deuW2eiSWdOH79mSP2PURdfcvWJz8Z4tDU+74PHpv+53WlYyBgQASKY4hd2rr75a\nt1n7PX/cnD/2i5fduaO8Vs9v3tC9Y/tm9aK/v/HS2MdnXt7p7Nkf/+28+hlJHBUAoPrFKez2\n8ezld+0oKx/5h3+MvKDlp5uu+fZN3/xF8y7fvfq/Z7/73MVJnQ4AoLrF+OGJXyzfWO/42/9d\ndVEURVGTr9z8oxPrfzz7p8maCgAgWWIcdutKyuq2Ouez2790Qt2Swr9X/zwAAMkV47D7ZtM6\n296f/9ntc1dsqVX3jOqfBwAguWIWdjs3zLp6yIif/OzhqTNe6n5D563v/+SHf/xg7wOWP3/b\nT97f0vTcW5M1IQBAssTp4Ykvdzh1xbvvPj3+ob033tOv64+2r4yiKCrf9c2Lz578h7dSM5o/\n+tT5yRkRACB54hR2byxaFkXRprXvr1yxYuXKlStWrly5cuWq97f8a3/ppJf+L7vNeQ/++vme\nDWsncU4AgKSIU9jtltWkZccmLTue033fHYla895e1bn9CRaeAACOTvELu+LN7y+Y99fF//gk\n5+TTL7rw3MyUPSGXcnb7E6IoWvLC9L9tKx40aFDyZgQASIKYhd2C8cP73TB2bXHp7j/WbZU7\n7oVZV57RYO9jXrjx2ttXbxZ2AMDRJk5h98+/3nXOdY9EqVmDbxzauW3T9//v5TFPzrr6y6el\nr1hx+fF1kz0dAECSxSnsJnzzoSilztOLVl55WnYURdGQ64df+eApX/vOtecN6b3ymb2+kwUA\nOBrF6T1241Zvbdj+wU+rLoqiKGr21RF/vvvsLasn9398eRIHAwCoCeIUdttKy2ofd/w+G7/8\n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\nIAibNm267LLLZs+enUgkWrVqFUXRs88++8wzz5x//vnTp0/PyspK9oAA/1bZsOt3zU2JROop\nuRdc179///7fOOvE/S/llZZ5YtOmTU/4YsMjNyFA0pSXl/fv3/+VV1759re/fdddd+Xk5ERR\n9PHHH999993jx4+/9NJL//SnPyUSFqoGaorKht1dD07q379f++Z1Kz4sNeN4a1QAwXjhhRde\neeWV//mf/xk7duyejc2aNXv00UdTUlJ+9atfvfDCC/369UvihAB7q+wNIiOHX3nAqgMIzG9+\n85uUlJSRI0d+dtddd92VkpLym9/8pvqnAvg8lb1iV1669fEfXPvwc/+76p/b9nvA1q1bj9xU\nADXCihUrjj/++CZNmnx2V5MmTY4//vgVK1ZU/1QAn6eyYTf3O12+/dDitGOaderYMSPVDSUA\nADVOZcPue08tT6975txV877cqHaVDgRQc7Rp0+bNN98sKCho2rTpPrsKCgo++OCDc889NymD\nAexXZe+xW1JY0rLPL1UdcFS57LLLysrK9nuP3ciRI8vKyi677LLqnwrg81Q27M45Nt0T/cDR\npnfv3j169Bg/fnxeXt6HH364e+OHH36Yl5c3fvz4Cy64oHfv3smdEGBvlQ270d87+70XblxS\nWFKl0wDUKIlEYvr06T179pwwYULLli1btWrVqlWrli1bTpgwoVevXtOmTfMSO6BGqegeu/fe\ne2/PX2f916M3zDk/99Rud941ossX27U4rt4+B+9+ITtAYOrXr//SSy+99NJLv/71r5cvXx5F\nUdeuXa+44ooLL7xQ1QE1TUVhd8IJJ3xm2/vfv/b1/R5cXl5+ZCYCqGESicRFF1100UUXJXsQ\ngAOoKOyuv/76apsDAIDDVFHYPfzww9U2BwAAh6misFu5cmXlP6h169aHPQwAAIeuorA7+eST\nK/9B7rEDAEiuisLuxhtv3PuP7/7hqZnLNtWq26Lr185t3aLhtrWrFy94dfGH207p+4PbLjm1\niucEAOAAKgq7Bx54YM9f/3PBj1s8tLnTtx/83cPXN0n/19vvyoum3NF70D0/W33zB1U6JQAA\nB1TZFxT/csAvajX4xmu/Gv7vqouiKJEx4Kd/+GbjjPsH3Vcl0wEAUGmVDbvHP9pW/5Rvpe/n\nZZwpA0/PLiyYeESnAgDgoFU27I5NSxR+8L/73fWXlVtTajU6ciMBAHAoKp3ZnNsAACAASURB\n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\n5aAd1Pnd2wcvfWf31S5hx3/442UnRVH0nUXr9mzZtXNVg1opmY0u+bwfeeuOL0ZR9N9zPtp7\n43PX/tfXv/71t/2Do4Y5hPP75KkNoih6ft32vTeeVTc9tVajKhyUQ9W1ZYO9v9A44L8YDuFX\ngiQ62PN7c4t6iUTq65v/47DXhp0WRVG/v3xclZNyKA72/O5RtOWNU4+pldXhuDDCLu1IfJ3L\np8bOWZOSlnXX6f/+3UrNOOHWlsfeunLGm9tKOtWt9dkfeXTCipS07J93ydl74zfGT/lGlQ/L\nQTuE89uoce1oebR0Q9ElDTN3bykr+WRNcWlq7VbVNDQH46qb7/x6SWkURX8d/cNpn2w/4PGH\n8CtBEh3s+Z2zqSi93pe/cmz63hubn980GrP0k+VbonNzPu8HSYqDPb//UnZ3jz6r08589akT\nzj5rWtWNV22E3RFTXrb9pQ07azfqWy81sff23I4No5WbZqzbsZ9/ypfvmvbJ9syGg7PTyl7/\n3TN/eH3x1l3pbb/01UGX9dznQ0i6Qzm/UXTuhJENTv+fe7sPPu25X/T4YqutH7z98HevWFNc\nesmoCdU1OAfh6uE37v6LJ8ePOuC/GA7tV4IkOqjzG0XR06+/WZ6Wvc/GRRNXRVF0SqeGR3w8\nDtPBnt/dFj7Y556/rrvr9UWnHPOdKhutWgm7I6a06P2isvL6x7TfZ/uxpx0bRVH+9v08nrNr\n57ubdpUdm95kRLeTHnr1/X9tvvfW23u+sOC3XY+rXbUTczAO4fxGUVS/zbeX/iX19POGfCP3\nxT0bBz7y6rPDzqi6Uakeh/YrQYy079Bhny0Frz9w5cz3Mo79yv2nC7sQbH1vSrdbXjp9yHM/\nPLvJhuXJnuYI8bqTI6asZF0URSmpx+6zvVbdWlEUbd+8n3/K7/6RLR/c9+jC+r947i8fb9qx\ndtWSB4edv+Xdl/udPdQrE2qUQzi/URSVbHt76P98f31J6Re697luxIgB/XrUTU157o7rH1+4\nvqoHpqod2q8EMVVeuvmZn36rzVdv2ZHS8Gd/fiErzZcqsVe+a8N/n/vtXcf1nvNwn2TPciS5\nYnfEpKRlR1FUVrrvK8pKtpVEUZRRbz//UydSMnb/xc8W/OWGtllRFEX1Txv+yJ92zG/8/f/3\n5F2rHvjRifWrdGYq7xDObxRFPz23+4xF67//3OJ7vvGF3Vs2L5uV27Hf0C7n9Nyw5PiM1Koc\nmap1aL8SxNE/Xv7Vtdd97y+rt2a37fnErydf1qHBgX+GGm/miP/f3t1HRVXmARz/3WHecHgV\nEAQtKxRRzBeK1DTNXTXDt6yTuaKikazZskuSSamHOpms+ZLbMeukHDW11U54NDXfMtB1E1PR\nrBXTBfOoWAIBorw6d/8AZwlJkUD04fv5a+a598557rkzw5c7w+Xx5PP2ZcdXehuVOsml1M40\nLSdrO6tBqyjOqDF+KeOSiATaavm2jZOljYhY3PtWVd01z74WIiJf7spurLni1tXj+JYWpL5x\nJMetXYKj6kTEveOTn8SFlF858eK/LzTqhNHY6vGUwF3HXpH3zvN9g56Y8nWOz7TFG859/wVV\np4bcb+eMWnqsb8Kuie1VO4FC2DUYzWAb7GktydtW8uvPUI8eyhWRUd7O129iMPn2cDEbTN41\nxi0+FhHRy/TGmituXT2Ob9mlNBFxC+xVY9xvkJ+I/Hzkl0aaKm6PejwlcHfR7ZenDQiZnvSv\nB5957bvsjPkxI50NfAKriLz07XZdT53VW7vGq+NaETmc0F3TNP9eXzT1BOuPDwsa0tR+fhuT\ns+Zl5s8OrDoDZy/P+fuZQmfvkT1dzbVuEtfde+y+LQculYe5/v/3+2MfnBKRro+1ug1zRt3d\n6vG1uD0qIvnHt4kMrD5+JvmsiASE8nv/Xa8eL3ncRY4kDn53b3b3mLWHF49p6rmggbkFDomM\nfKD6SFnBnrUbMr26DR/WraX7AwFNNbEG0NQX0lNKYdb7mqb5hMYXV12FXk95q6+I9Hu36jL0\n9orC06dP/3gm27FJ7ndvi0jAwPiz165c/+PuJR5Gg8XtUf4r0Z2mHsc3LshTRJ7/8CvHSPaB\ntfdYjUZru5PFFTruVEkdWsp1Fzi9/vje9CmBO1Pdjm/FQ65mk63zL+W8Fd9l6vj6rSE340+i\nxAWKCbsG9s8/dxUR/55Pxc+eHf1MH03TPIMj8669L1w6O19EzC49qm+yclKIiLTw6zxizIRh\nA8JMmuZk8l6w/+emmD5u4laPb9HZzzu5mkWkbWi/MZETwgeEmQyawanFK8mZTbQHqJNafzDU\n+vq98VMCd6a6HN/i3M9FxGi9r39tZvwnrykmjjqp++u3OmXCjo9iavKc/AAABjtJREFUG9jo\npYec20+f88H6xXO3OHu3Hf1S4vz5cZ43/MP48cvSPULi5y379MvkNQaXVn1HRce9OXdIJ48b\nbIKmcqvH1xYw9HDW/sSZb6/fkpq8ep/F3bfP8Ki/vD7nqYd8bue00Xjq8ZLHXaE0f7eIVJRk\npaRkXb/UVlh222cE1Imm63xDHwAAQAX8VSwAAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAo\ngrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKwAwAA\nUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAEYQcA\nAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAogrADAABQBGEHAACgCMIO\nAABAEYQdgGbE32J0MrX8nQ+yb2JHTdO2/lLSIFMCgAZE2AEAACiCsAMAAFAEYQcAIiL20jJ7\nU88BAH4nwg5A87VnTHtN0yqKf4gdFtaihdXoZG3bvsu46UsLr+qOdQoytk8e9XhrL1eLi2fI\nYyM/3JVZ40H0qwVr5sb07nSvm7OlVdvAgRHTdmQUVC668tMmL7OT+/0TS6o14/vh9xoMpoVH\ncxt//wA0O4QdgOZuRv++S1Lyh0+YGjd1nHvuydXvvNgrelvlovwTy4O7hn+0IcXatutTw/sb\nz6VOGRw8J/2iY1vdfjmmf8eI1947IQHhz43rHey795NFT3YNWpB6QURa+A7fOXdAYdaKoQvT\nK9c/v/uVqVvPPPjSxpe7et3+PQWgPh0Amo3WZieD0dNxN/W5QBFx9vpD2s/FlSMl+ft8zU4m\nWxdd13XdPtbfRUQmL0mpXGq/WjQ/omPlm+eWvGJd148m9hGR0NhVpfaqx7yQttrf4mR26Z5b\nbtd1XbeXRgd5GEwtt168UlFyuqebxeY3PLf86u3aYwDNC2fsADR3A5KWh/lYK29b3Hu/4Ge7\nWnpWRIrOL1lzvqhV6KIPX+xXuVQz2GKTUtpZjY5tYxK/sbg9+tU7EWatasQ3bOz6qKCyovTE\nHwtERDTzgt3LXfX88QMTPoselFYkC1NWtjTy3gugURhvvgoAKG10T5/qdx3VlZe+UUQ6x4+o\nvtRg8k1o7xF5LEdEyosOpeaXurQOXr8iqfo6+TaDiBw4mCsPeIiIzX/Urrf6PTxj3ugj8kj8\nV5ODPBpzbwA0a4QdgObOy1T7+bMr566IiEewW43xdsHucixHRCqKfxCRouxlUVHLrt+8+Hyx\n43a3mA9cXw8usuuv/u2Rhpo2AFyPjwMAoHYu97mISH5GYY3xyz9V/c8JJ3OAiPiFbar1my5p\nsSGOTdZPHlqkO1k1iQ5/i4uqAGg8hB0A1M6zyzMi8n3i5l+N6mXzjuRU3jS79+nUwlSYuaJG\nq536eE5sbOy+wrLKuxf2zopYcypk6qbNL3e/ePDtMatONv7cATRThB0A1M7m98K4Ni4XD/71\npY/2VQ3pFaumD0gtKL22imHppKArOclPvLHJ0XaXsjYPiU5YmpTWzcUkIldLTo0In2dt+ccv\nFwzqP3fHE97OydEDv77WfADQsAg7APhN/9i5yNdkWDK5T4eHH4+IfK5nSEDkgv1j4zo5Vuiz\nYPvTQR47E0b4BT307KQp458dck+HEZll1pkbP7MZNBFZETHom6KKWdvX+pgMBqPXx9tn2UvP\nPD1sYdPtEwCVEXYA8Js8OkYdT/88amS/wv8eXLdua54tdPHWjHlD73GsYDD7r/v22HuvTmxT\ncX7z6uXb0zK7h0/69EDmzP6tReTcjmlRn2UFRqyND/WuXN+7R/zqMfdn74mP2nC6SfYIgNo0\nXddvvhYAAADueJyxAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB\n2AEAACiCsAMAAFAEYQcAAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAo\ngrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKwAwAA\nUARhBwAAoAjCDgAAQBGEHQAAgCL+B/wAweDQVvRAAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "plot(y_dhyper)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d8e9d0f8",
   "metadata": {
    "papermill": {
     "duration": 0.00747,
     "end_time": "2022-09-08T04:26:48.801852",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.794382",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Q5. A recent national study showed that approximately 44.7% of college students have used Wikipedia as a source in at least one of their term papers. Let X equal the number of students in a random sample of size n = 31 who have used Wikipedia as a source.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "647f1921",
   "metadata": {
    "papermill": {
     "duration": 0.00636,
     "end_time": "2022-09-08T04:26:48.814848",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.808488",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### * How is X distributed? \n",
    "#### * Sketch the probability mass function. \n",
    "#### * Sketch the cumulative distribution function. \n",
    "#### * Find mean, variance and standard deviation of X."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "a8c84d43",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.830240Z",
     "iopub.status.busy": "2022-09-08T04:26:48.828912Z",
     "iopub.status.idle": "2022-09-08T04:26:48.839649Z",
     "shell.execute_reply": "2022-09-08T04:26:48.837995Z"
    },
    "papermill": {
     "duration": 0.020629,
     "end_time": "2022-09-08T04:26:48.841673",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.821044",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "X<-seq(0,31,by=1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "83116843",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.858057Z",
     "iopub.status.busy": "2022-09-08T04:26:48.856696Z",
     "iopub.status.idle": "2022-09-08T04:26:48.870924Z",
     "shell.execute_reply": "2022-09-08T04:26:48.869347Z"
    },
    "papermill": {
     "duration": 0.024025,
     "end_time": "2022-09-08T04:26:48.872592",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.848567",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li><li>10</li><li>11</li><li>12</li><li>13</li><li>14</li><li>15</li><li>16</li><li>17</li><li>18</li><li>19</li><li>20</li><li>21</li><li>22</li><li>23</li><li>24</li><li>25</li><li>26</li><li>27</li><li>28</li><li>29</li><li>30</li><li>31</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 0\n",
       "\\item 1\n",
       "\\item 2\n",
       "\\item 3\n",
       "\\item 4\n",
       "\\item 5\n",
       "\\item 6\n",
       "\\item 7\n",
       "\\item 8\n",
       "\\item 9\n",
       "\\item 10\n",
       "\\item 11\n",
       "\\item 12\n",
       "\\item 13\n",
       "\\item 14\n",
       "\\item 15\n",
       "\\item 16\n",
       "\\item 17\n",
       "\\item 18\n",
       "\\item 19\n",
       "\\item 20\n",
       "\\item 21\n",
       "\\item 22\n",
       "\\item 23\n",
       "\\item 24\n",
       "\\item 25\n",
       "\\item 26\n",
       "\\item 27\n",
       "\\item 28\n",
       "\\item 29\n",
       "\\item 30\n",
       "\\item 31\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 0\n",
       "2. 1\n",
       "3. 2\n",
       "4. 3\n",
       "5. 4\n",
       "6. 5\n",
       "7. 6\n",
       "8. 7\n",
       "9. 8\n",
       "10. 9\n",
       "11. 10\n",
       "12. 11\n",
       "13. 12\n",
       "14. 13\n",
       "15. 14\n",
       "16. 15\n",
       "17. 16\n",
       "18. 17\n",
       "19. 18\n",
       "20. 19\n",
       "21. 20\n",
       "22. 21\n",
       "23. 22\n",
       "24. 23\n",
       "25. 24\n",
       "26. 25\n",
       "27. 26\n",
       "28. 27\n",
       "29. 28\n",
       "30. 29\n",
       "31. 30\n",
       "32. 31\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1]  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24\n",
       "[26] 25 26 27 28 29 30 31"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "X"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "93eb6d51",
   "metadata": {
    "papermill": {
     "duration": 0.006485,
     "end_time": "2022-09-08T04:26:48.885915",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.879430",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**It is a binomial distribution**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "86e7325c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.902289Z",
     "iopub.status.busy": "2022-09-08T04:26:48.900890Z",
     "iopub.status.idle": "2022-09-08T04:26:48.911318Z",
     "shell.execute_reply": "2022-09-08T04:26:48.909767Z"
    },
    "papermill": {
     "duration": 0.020443,
     "end_time": "2022-09-08T04:26:48.913026",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.892583",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "y<-dbinom(X,size=31,prob=0.447)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "09738d61",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:48.929613Z",
     "iopub.status.busy": "2022-09-08T04:26:48.928360Z",
     "iopub.status.idle": "2022-09-08T04:26:49.011522Z",
     "shell.execute_reply": "2022-09-08T04:26:49.010074Z"
    },
    "papermill": {
     "duration": 0.093129,
     "end_time": "2022-09-08T04:26:49.013154",
     "exception": false,
     "start_time": "2022-09-08T04:26:48.920025",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "plot(y)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "9266777d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.030169Z",
     "iopub.status.busy": "2022-09-08T04:26:49.028821Z",
     "iopub.status.idle": "2022-09-08T04:26:49.038954Z",
     "shell.execute_reply": "2022-09-08T04:26:49.037528Z"
    },
    "papermill": {
     "duration": 0.020234,
     "end_time": "2022-09-08T04:26:49.040745",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.020511",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "y_pbinom<-pbinom(17,size=31,prob=0.447)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "1bd3f167",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.058679Z",
     "iopub.status.busy": "2022-09-08T04:26:49.057428Z",
     "iopub.status.idle": "2022-09-08T04:26:49.127004Z",
     "shell.execute_reply": "2022-09-08T04:26:49.125707Z"
    },
    "papermill": {
     "duration": 0.080104,
     "end_time": "2022-09-08T04:26:49.128584",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.048480",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeVxUVQPG8TNsw76rICguIeKKoeKWiLtmaol7aKVt7pWvlVlamUulaS6VZZma\nSm5pSkIiGIqa+y7hvqEiCMgOM/P+MYiICAMy3Fl+3z/6XO5cZh6GgMdzzz1XplKpBAAAAPSf\nidQBAAAAUDkodgAAAAaCYgcAAGAgKHYAAAAGgmIHAABgICh2AAAABoJiBwAAYCAodgAAAAaC\nYgcAAGAgKHYAAAAGgmIHAABgICh2AAAABoJiBwAAYCAodgAAAAaCYgcAAGAgKHYAAAAGgmIH\nAABgICh2AAAABoJiBwAAYCAodgAAAAaCYgcAAGAgKHYAAAAGgmIHAABgICh2AAAABoJiBwAA\nYCAodgAAAAaCYgcAAGAgKHYAAAAGgmIHAABgICh2AAAABoJiBwAAYCAodgAAAAaCYgcAAGAg\nKHYAAAAGgmIHAABgICh2AAAABoJiBwAAYCAodgAAAAaCYgcAAGAgKHaAIbh9oI/sgcs5Ch1/\n2qeUn3WuMFXf44nqnZJELfFF977aUL3HyqmrhDGkoPxtxuuN61SXm5lZWNoETD4oXRKN6Mz7\nBlQmM6kDANAJ7Vs0T8tXCiH8Ptm6amBdqeNIQC/eAV0OeX71Sy9/uqXgA0Xm/Yx8SeM8Qpff\nN6ByUewACCHE2VOn7uUrhRD2yTlSZ5GGXrwDuhwy4vMY9YapucvQVwZ4tq4mbZ6idPl9AyoX\nxQ7AE1Vvufbu3Vz1tpPcVNowpZMkqo68PzoSIy4jT73h2vzHVctelCqG5nTkfQMqF8UOqCIq\nhVJmqouzWhP3x5zIyM1TFXyYem5fZOQNF//n/BwtZKZ2Li6ShtPY00Qt5R3Q3ouWl+5/m5Sq\ngnBmttbSJilK9983oJKpAKhUOffOzX//zQ7N6jvbWZlb2Xn6+A+f8MXBhMyix+zqXzA1x9o1\nuOj+jFs/Ff5AfXQ5Vb3zwKQm6j2Wjl2yEve/2bOltamJzNTSvU6TV9//9m6eQqVSHV3/5fPt\nfJ1t5XIbx6bten+z/liFX+7W/ucLd17Kzi88WKnI2LTk0z6BrWq6OFiYmlnZOtRv0jpkwoz9\n19ILj9ncyPXx3ww9o2+U+LTHPvdXfyiTyaJTsosG2xTkoX7I3NonXaEs3H/n2LaJI/s1qO1m\nbSGvUbvBcz2GLtv6b75KU+nXYt575YU67s7mcluvRu2nLAzLyThTmOqFY3dKfwdUKuWetQuH\n9HyudnUnuZmZraNL41adxs9YHH8/V5N34NSCAPWHJmZOKpXq1t7fBrRv6mRpfjk7/0kvuucV\nn8JvvSI3ceF7IxrVrmFpblWzXpNXJs+NT8+r2He5XN+mh198XtLvC6b1DWzh7upgbm7p6l6r\nY5/h89f9k6cselTxL3Pfypk9WjZwspVb2jo2adfzyzUHSv8elZitut+f5foCKxajzJ9cXX7f\nAG2g2AGq27E/eFubP/7b38yy1vx/bhUeVrFiZ27tE1Sj+ABGjTbvR8zs8/grhiyPq9jLlfgn\nSpGbMMq/5HlOpvKay04nqw8r11++rOQwmUym3tN5zfkiufKb2hS8h/WC/3r4Vcwfaf7g+KJq\ndx5zLafsdnc7dpG7RfFzZH6vf1G4XUaxU+Z82t+nxHfAwr7h6lNlvwNF/3LfPfKtk5lJ0Zco\nvdjJ7dtOalX8/bd09vvrxsNWrdVid//Kji61bEv88j06vvVf5sOKWfTL3PlJl8eP7/v1wVK+\nTdoodprE0OQnV5ffN0AbKHYwdjmpe72tCv42yGSy2r7NmzesZ/agi5hZ1TueXjC0U7Fi9+CZ\nTeysSpj5YGJua2HysPdY2DYvHBJ4+mK37z2/wp2W1er6t2rpW/9hz7Cv807Rpy2sLO2+P1u4\ns8Snfa+2vXqPS6MFhUem31xceOSM8ynqndcj3i9sgU4N2wwYOqRrO9/Cw2oGflb6tyb3/qFn\nirxpJuYOj0+EKr3Y/ffLw50OXs269ujerqWv6YNIls6dM4uMLJb4DhT5y20/yN2m2EuUXuwK\nyR2rF/0u27j1TctXVuC7XK5vU37WhSBXq8L9ZlYuTZp5WxeZDFCj3YeKx75MmcxE/f6YWduZ\nFmnkphY1rmQ/sYjf3rNrx44dfV0KXs612Rc7duzYFXunvF9guWJo/pOrs+8boA26OOMHqEq7\nJ74an5UnhDAxd14ee+PKmWPHzl64duBHBzMTIUR+1sXXl557ypfwGTH3SkpWWmbOv+veLdwp\nk5l+sGJPRvb9zMyEOX1qq3fmph+PSMl+ypcr9OHyguR1B/6QevvioX8Pnjl/Z++XrdQ7719Z\nnKN68ic/2VtfFDzDvf+mJ+Qq1dsXV/2q3pA7tJ9W30EIIYRi3LBFKpVKCFF/yA+3z+zbsGbt\n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\n7d/t6RITM61mFDtL0Di1dlKryopSK2y/kXpDCNHexVFGKFsVMquDEOLnfVdlB7EBTDzzYu4Z\ny679e2Kv+wa8eDCr0ZwFm35L3vZ00O8XsDPZ7qSaQbsTZtptVNpez7+zslezwstx713IY6bV\niGJnCSq1S38vp+Jr24tvP7N+/Fi2EOJJH2c5sayd0WAwGCs9P1uj0wghHN3501szJl5dMfeq\nYDIWzOnb+a8r9gWNnPdTRuqHs4Y7q/+4ep3JVqXqB42ZVln+bwtGjBjx8pqzFbbf17uxEOLH\n3BJmWo0odhYyvbevofTqB7/k3NxiLM16/9c8Z5/hPW5/3j3KFWVtcnBwaNLtowrbf1ySJoTo\nE9pERijbw8SrA+ZelX58r/9/kjLun7X2+JfvdHCtonMw2SqrftCYaZWpHX02b9689uP9Fbaf\nTboihAj21AlmWo1kP0jPXuSdi1KpVI2CXy3631MX9/yzlxCi9394UvYdjWrmqlJp5sak3tzy\n297F7g5ql6ZPlxol5rJSKzo0FJUftMvEq0mV48bcq6TsQTeto0vg9Tv//zPZKql50JhplRgH\nezurNW6fHr16c9Plw0vdHdQ6j54FBqOJmVYT3hVrOV+82O25T4436zFi/ONdrqXsXrpxv2fH\n8WdPrPBy4N12VbuevKJz8OSMEmPn0CceaO116eefEg8cVzm3X3Xi6Kh2FW+Jwsr7vP/087XK\n7zxl4lWvynFj7lVQfG2rs/cQB6c2PXu0qry3R9TX/wrwEky229Vm0JhplV05/H7bR+cVmnQP\n9x8U4Ody6UzK7r1HS9We/9qd8tdevuXHMNOqI7tZ2pWymP/780P+zRs4ar2btntu5vsX9Yaa\nv8m+3UhPeuWFYe2b+eg0jg192w//07xDlwpkh7JSVZ55MplMTLzq3WncmHu3yjn7cjV/jww6\nlPm/A5lsf6jloDHTKrv6/YaIJ0P9Gjd01Gi9mrQdOGr2tpTrtx/CTLsjztgBAAAoBDdPAAAA\nKATFDgAAQCEodgAAAApBsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATF\nDgAAQCEodgAAAApBsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATFDgAA\nQCEodgAAAApBsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATFDgAAQCEo\ndgAAAApBsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAUDVjKVXBzVxUalUIz5N\nrbx328wglUrl1/c9ywcDgDtRmUwm2RkAwEpdT470DZppcGyWmHm2l6fu5vac1CWNA6cL507f\nXf6hm4ujxIQAcCvO2AHAHXkFTo+b84BB/9szgz+4udFkyJsY9pdSo2nGxu20OgBWhWIHANUJ\n+9fuZ5q7Zu5/Y8JX58q3JL0R/vWlgnbPrvyof3O52QCgApZiAaAGeb+satrhT6U6/yNXTrbN\n+sK33Xij26OpmYmtdBrZ0QDgNpyxA4AauLcdv3P+I6WFp4c8HTWr74wio+rtXV/T6gBYIc7Y\nAUDNTMaiiR2arjybK4ToOnPrjwsHyU4EAFXgjB0A1Eyldp7zUufyr2f9pbfcMABwJ5yxA4Ca\nFV9LaNes/2VjQ0PpVY/2f8o4/amzWiU7FABUxBk7AKiJqezVPs9e0hvGrj28dFir3DMrwv++\nX3YmAKgCZ+wAoAbff9Q/eM43vo/+I2Pf62WFKd0ad0spclh6KiOig4fsaABwG4odAFQn/8IX\nfm1HF2qa77mS9qi7Vgjxa+zUVsOiXXyHpl/Y5OPAugcAK8KPJAC4I5Mhf+pjk/PKjMM/2Vne\n6oQQLYd+8kGfZgWZsX1nbZUbDwAq4IwdANzR7ldDwt77rlHw3zKP/uvWfweX3PiuY+NH0/Wm\ndw5lvPpQI2n5AOB2FDsAqNr15MimQTPLHBptu3Q+3Nupwt4z/x3t//w6ncejpzK/bePEw4oB\nWAWKHQAAgEJwjR0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATFDgAAQCEodgAAAApB\nsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATFDgAAQCEodgAAAApBsQMA\nAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhaDYAQAAKATFDgAAQCEodgAAAApBsQMAAFAI\nih0AAIBCUOwAAAAUgmIHAACgEBQ7AAAAhfh/rGZqa0INN6MAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "plot(0:31, pbinom(0:31, size = 31, prob = 0.447), type = \"l\",main='cumulative distribution function',xlab='X',ylab='Cumulative Prob(X)')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "f325c9e0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.146687Z",
     "iopub.status.busy": "2022-09-08T04:26:49.145537Z",
     "iopub.status.idle": "2022-09-08T04:26:49.161860Z",
     "shell.execute_reply": "2022-09-08T04:26:49.160431Z"
    },
    "papermill": {
     "duration": 0.027806,
     "end_time": "2022-09-08T04:26:49.164189",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.136383",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# mean,std dev and variance\n",
    "# mean=np\n",
    "# variance=npq\n",
    "# std dev=sqrt(variance)\n",
    "n=31\n",
    "p=0.447\n",
    "q=1-p"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "6717d99f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.182940Z",
     "iopub.status.busy": "2022-09-08T04:26:49.181762Z",
     "iopub.status.idle": "2022-09-08T04:26:49.193800Z",
     "shell.execute_reply": "2022-09-08T04:26:49.192567Z"
    },
    "papermill": {
     "duration": 0.023345,
     "end_time": "2022-09-08T04:26:49.195507",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.172162",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Mean is: 13.857\"\n"
     ]
    }
   ],
   "source": [
    "mu=n*p\n",
    "print(paste(\"Mean is:\",mu))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "f87fd483",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.215348Z",
     "iopub.status.busy": "2022-09-08T04:26:49.213994Z",
     "iopub.status.idle": "2022-09-08T04:26:49.227409Z",
     "shell.execute_reply": "2022-09-08T04:26:49.225938Z"
    },
    "papermill": {
     "duration": 0.024855,
     "end_time": "2022-09-08T04:26:49.229105",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.204250",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Variance is: 7.662921\"\n"
     ]
    }
   ],
   "source": [
    "sigma_square=n*p*q\n",
    "print(paste(\"Variance is:\",sigma_square))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "44891206",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-08T04:26:49.247440Z",
     "iopub.status.busy": "2022-09-08T04:26:49.246166Z",
     "iopub.status.idle": "2022-09-08T04:26:49.259248Z",
     "shell.execute_reply": "2022-09-08T04:26:49.257718Z"
    },
    "papermill": {
     "duration": 0.023846,
     "end_time": "2022-09-08T04:26:49.260893",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.237047",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Standard Deviation is: 2.76819815042204\"\n"
     ]
    }
   ],
   "source": [
    "std_dev=sqrt(sigma_square)\n",
    "print(paste(\"Standard Deviation is:\",std_dev))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "929b8db5",
   "metadata": {
    "papermill": {
     "duration": 0.00761,
     "end_time": "2022-09-08T04:26:49.276380",
     "exception": false,
     "start_time": "2022-09-08T04:26:49.268770",
     "status": "completed"
    },
    "tags": []
   },
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.869508,
   "end_time": "2022-09-08T04:26:49.407047",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-09-08T04:26:44.537539",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

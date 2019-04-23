package com.sp.exam.handler;

import com.sp.exam.VO.ResultVO;
import com.sp.exam.enums.ResultEnum;
import com.sp.exam.exception.LoginException;
import com.sp.exam.utils.ResultVOUtil;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExamExceptionHandler {

    @ExceptionHandler(value= LoginException.class)
    @ResponseBody
    public ResultVO handlerLoginException(){
        ModelAndView view =new ModelAndView();
        return ResultVOUtil.error(ResultEnum.ACCOUNT_WRONG.getCode(),ResultEnum.ACCOUNT_WRONG.getMessage());

    }
}
